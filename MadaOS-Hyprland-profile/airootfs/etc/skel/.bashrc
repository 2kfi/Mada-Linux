#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '
(cat ~/.cache/wal/sequences &)

# Alternative (blocks terminal for 0-3ms)
cat ~/.cache/wal/sequences

# To add support for TTYs this line can be optionally added.
source ~/.cache/wal/colors-tty.sh
export GTK_THEME=catppuccin-mocha-peach-standard+default

# COW SAYS PART! - Random llama tech message at startup
lines=(
"Stay curious!"
"AI is up and running."
"Neurons firing… systems online."
"Boot sequence complete."
"Llama ready for duty."
"Compute, adapt, conquer."
"Tech never sleeps."
"Your cluster obeys."
"Powering the homelab mind."
"Logic engaged. Let's build."
"Stay curious — systems are warming up..."
"AI is online — compute cycles engaged..."
"Boot sequence complete — all nodes syncing."
"Your homelab brain is awake and watching..."
"Llama operational — logic flow stabilized."
"The tunnels are ready… systems hidden."
"Your command center is operational, commander."
"The network grows… unseen, unstoppable."
"We take what we need — even CPU cycles."
"No cost is too great for progress."
"Our tech is humble… but deadly."
"We control the chaos — you guide the strike."
"A system upgrade… for the good of all."
"Resource flow stable — production rising."
"Your homelab is the true base of power."
"They may have strength… but we have ingenuity."
"Every node is a soldier. Every packet a strike."
"When the system awakens, the world will notice."
"Hidden, silent… but everywhere."
"Your code is the weapon. Your logic is the command."
"We rise from nothing — and become everything."
"Resourceful. Relentless. Unseen."
"Improvised. Optimized. Unstoppable."
)
# Pick a random line
random_index=$(( RANDOM % ${#lines[@]} ))
echo "${lines[$random_index]}" | cowsay -f llama -W 200


. "$HOME/.local/bin/env"
export PATH="$PATH:/opt/android-sdk/platform-tools"
zsh
