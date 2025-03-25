#!/usr/bin/env bash

PROCESS="$(/opt/homebrew/bin/yabai -m query --windows --space)"

if [ -z "$PROCESS" ]
then
      PROCESS="[]"
fi

echo $(cat <<-EOF
  {
    "process": $PROCESS
  }
EOF
)
