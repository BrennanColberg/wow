#!/bin/bash

# when called, says:
# - "wow" 10% of the time
# - "super wow" 1% of the time
# - "super duper wow" 0.1% of the time
# - "super duper duper wow" 0.01% of the time

# Generate a random number between 0 and 99999 (to handle decimal probabilities)
r=$((RANDOM * 32768 + RANDOM))
r=$((r % 100000))

# Check probabilities (converted to integers for comparison)
# 0.01% = 10 out of 100000
# 0.1% = 100 out of 100000  
# 1% = 1000 out of 100000
# 10% = 10000 out of 100000

if [ $r -lt 10 ]; then
  say "super duper duper wow"
elif [ $r -lt 100 ]; then
  say "super duper wow"
elif [ $r -lt 1000 ]; then
  say "super wow"
elif [ $r -lt 10000 ]; then
  say "wow"
fi