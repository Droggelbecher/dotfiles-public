# Heavily inspired by: https://github.com/danr/dotfiles/blob/0df570877463d75e2b291cd270219221075ffc4f/config/kak/kakrc

def open-fzf-file -params 0..1 %{
    open-fzf "edit \$1" ""
}

def open-fzf-git -params 0..1 %{
	# cd local into git base dir so we interpret the path to be opened correctly
	%sh{ echo cd $(git rev-parse --show-toplevel) }
	# also cd in the opener so it understands the paths its displaying (enables preview)
    open-fzf "edit \$1" "cd $(git rev-parse --show-toplevel)\; git ls-tree --full-tree --name-only -r HEAD %arg{1}"
}

def new-open-fzf-file -params 0..1 %{
    new-fzf "edit \$1" ""
}

def new-open-fzf-git -params 0..1 %{
    new-fzf "edit \$1" "cd $(git rev-parse --show-toplevel)\; git ls-tree --full-tree --name-only -r HEAD %arg{1}"
}

def fzf-tag -params 0..1 %{
    open-fzf "tag \$1" "readtags -l | cut -f1 | sort -u"
}

def fzf-cd -params 0..1 %{
    open-fzf "cd \$1" "find %arg{1} -type d -path *.git -prune -o -type d -print"
}

def run-kakoune %{ %sh{
	echo run-external "kak -c $kak_session"
} }

def run-ranger %{ %sh{
	echo run-external ranger
} }

def run-shell -params 0.. %{ %sh{
	if [ -z "$@" ]; then
		echo run-external "$SHELL"
	else
	    cmd=$(mktemp /tmp/kak-cmd.XXXXXX)
		cat >$cmd <<END
#!/bin/sh
$@
sleep 1
echo Press return to close
read
rm $cmd
END
		chmod 755 $cmd
		echo run-external $cmd
	fi
} }

def open-ranger %{ %sh{
	echo run-opener "ranger\ --selectfile=${kak_buffile}\ --choosefile=\$tmp"
} }

def new-open-ranger %{ %sh{
	echo new-opener "ranger\ --selectfile=${kak_buffile}\ --choosefile=\$tmp"
} }

def run-git-show %{ %sh{
	tmp=$(mktemp /tmp/kak-git-show.XXXXXX)
	tmp2=$tmp.$(basename ${kak_buffile})
	mv $tmp $tmp2
	rel_path=$(git ls-tree --full-name --name-only HEAD ${kak_buffile})
	git show HEAD:$rel_path > $tmp2
    cmd=$(mktemp /tmp/kak-cmd.XXXXXX)
	cat >$cmd <<END
kak -c $kak_session -ro $tmp2
rm $tmp2
END
	chmod 755 $cmd
	echo run-external "$cmd"
} }



def new-opener -params 1.. %{ %sh{
	opener="$@"
    cmd=$(mktemp /tmp/kak-open.XXXXXX)

	# $cmd will be executed in the other window/tmux pane
    cat >$cmd <<END
	edit=$(mktemp /tmp/kak-edit.XXXXXX)
	echo "echo eval -client $kak_client \"$edit_cmd\" | kak -p $kak_session" > \$edit
	chmod 755 \$edit
	tmp=$(mktemp /tmp/kak-tmp.XXXXXX)
	cd $(dirname ${kak_buffile})
	SHELL=sh $opener
	echo >> \$tmp

	rm \$edit
	echo kak -c $kak_session \$(< \$tmp) > /tmp/blah
	kak -c $kak_session \$(< \$tmp)
	rm $cmd
	rm \$tmp
END
	chmod 755 $cmd
	echo run-external "$cmd"
} }

# Run file opener program in directory of current buffers file.
#
# $1: program to run. Can make use of "\$tmp" where $tmp points to the name of a temp file
#     that should contain a new-line separated list of files to open after program has been run
# $2: edit command (defaults to "edit $1" which will edit selected files")
def run-opener -params 1.. %{ %sh{
	opener="$@"
	edit_cmd='edit \$1'
    cmd=$(mktemp /tmp/kak-open.XXXXXX)

	# $cmd will be executed in the other window/tmux pane
    cat >$cmd <<END
	edit=$(mktemp /tmp/kak-edit.XXXXXX)
	echo "echo eval -client $kak_client \"$edit_cmd\" | kak -p $kak_session" > \$edit
	chmod 755 \$edit
	tmp=$(mktemp /tmp/kak-tmp.XXXXXX)
	cd $(dirname ${kak_buffile})
	SHELL=sh $opener
	echo >> \$tmp
	(while read file; do
		if [ ! -z "\$file" ]; then
			\$edit \$file
		fi
	done) < \$tmp
	rm \$tmp
	rm \$edit
	rm $cmd
END
	chmod 755 $cmd
	echo run-external "$cmd"
} }

def open-fzf -params 2 %{ %sh{

	# Remove trailing whitespaces. Isn't sh just beautiful?
	options="$(echo "$2" | sed -e 's/^[[:space:]]*//')"

	if [ -z "$options" ]; then
		echo "run-opener fzf -e -m --bind ctrl-c:execute\"(\$edit \\\"{}\\\")\" \
			--preview=\"highlight -O ansi --failsafe {} 2>/dev/null\" \
			--preview-window=up:30% > \$tmp"
	else
		echo "run-opener $options | fzf -e -m --bind ctrl-c:execute\"(\$edit \\\"{}\\\")\" \
			--preview=\"highlight -O ansi --failsafe {} 2>/dev/null\" \
			--preview-window=up:30% > \$tmp"
	fi
} }

def new-fzf -params 2 %{ %sh{

	# Remove trailing whitespaces. Isn't sh just beautiful?
	options="$(echo "$2" | sed -e 's/^[[:space:]]*//')"

	if [ -z "$options" ]; then
		echo "new-opener fzf -e -m --bind ctrl-c:execute\"(\$edit \\\"{}\\\")\" \
			--preview=\"highlight -O ansi --failsafe {} 2>/dev/null\" \
			--preview-window=up:30% > \$tmp"
	else
		echo "new-opener $options | fzf -e -m --bind ctrl-c:execute\"(\$edit \\\"{}\\\")\" \
			--preview=\"highlight -O ansi --failsafe {} 2>/dev/null\" \
			--preview-window=up:30% > \$tmp"
	fi
} }

def run-external -params 1.. %{ %sh{
    tmux=${kak_client_env_TMUX:-$TMUX}
    if [ -z "$tmux" ]; then
        # Not running inside a tmux, try to spawn a terminal window
        echo "run-external-term \"$@\""
    else
        echo "run-external-tmux \"$@\""
    fi
} }

def run-external-tmux -params 1.. %{ %sh{
    tmux=${kak_client_env_TMUX:-$TMUX}
    command="$@"
    if [ -z "$tmux" ]; then
        # Not running inside a tmux, try to spawn a terminal window
        echo "echo -color Error 'No tmux session found'"
        exit
    fi
	echo cd $(dirname ${kak_buffile})
    echo echo "tmux split-window -h /bin/sh $command"
	cd $(dirname ${kak_buffile})
    TMUX=$tmux tmux split-window -h /bin/sh -c $command
} }

def run-external-term -params 1.. %{ %sh{
	term=urxvt
    command="$@"
    if [ -x "$term" ]; then
        echo "echo -color Error $term not found or not executable"
        exit
    fi
	echo cd $(dirname ${kak_buffile})
    echo echo $term -e /bin/sh $command
    (
		cd $(dirname ${kak_buffile})
        $term -e /bin/sh $command
    ) >/dev/null 2>&1 </dev/null &
} }


