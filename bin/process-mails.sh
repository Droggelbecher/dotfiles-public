#!/bin/bash

mbsync -a
if [ -x /usr/bin/notmuch ]; then
  /usr/bin/notmuch new
fi

