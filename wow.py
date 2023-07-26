import subprocess
import random

# speak text out loud via the bash command 'say'
def say(text):
  subprocess.call(['say', text])

# when called, say:
# - "wow" 10% of the time
# - "super wow" 1% of the time
# - "super duper wow" 0.1% of the time
# - "super duper duper wow" 0.01% of the time
if __name__ == '__main__':
  r = random.random()
  if r < 0.0001:
    say("super duper duper wow")
  elif r < 0.001:
    say("super duper wow")
  elif r < 0.01:
    say("super wow")
  elif r < 0.1:
    say("wow")