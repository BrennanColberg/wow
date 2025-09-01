#!/bin/bash

# this is the command to install
wow="curl -fsSL https://raw.githubusercontent.com/BrennanColberg/wow/refs/heads/main/wow.py | python3"

# check to ensure crontab doesn't already have it
EXISTING_CRONTAB=$(crontab -l 2> /dev/null | cat)
if echo "$EXISTING_CRONTAB" | grep -q "/wow."; then
  echo "Crontab already has the WOW command."
  exit 0
fi

# install at end of exsiting crontab
(echo "$EXISTING_CRONTAB"; echo "* * * * * $wow") | crontab -
echo "Installed WOW command at end of existing crontab."