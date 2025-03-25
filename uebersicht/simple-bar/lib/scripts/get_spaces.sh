#!/usr/bin/env bash

DISPLAYS=$(/opt/homebrew/bin/yabai -m query --displays)
SPACES=$(/opt/homebrew/bin/yabai -m query --spaces --space | jq '.type')
WINDOWS=$(/opt/homebrew/bin/yabai -m query --windows)
SIP=$(csrutil status)

if [ -z "$DISPLAYS" ]
then
      DISPLAYS="[]"
fi

if [ -z "$SPACES" ]
then
      SPACES="[]"
fi

if [ -z "$WINDOWS" ]
then
      WINDOWS="[]"
fi

DATA="{ \"displays\": $DISPLAYS, \"spaces\": $SPACES, \"windows\": $WINDOWS }"


echo $(cat <<-EOF
  {
    "spaces": $DATA,
    "SIP": "$SIP"
  }
EOF
)
