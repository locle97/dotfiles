# History control
set -U fish_complete_case_insensitive 1
set -U fish_history
set -x HISTSIZE 32768
set -x HISTFILESIZE $HISTSIZE
set fish_greeting
set -gx EDITOR nvim

# Path settings
set -x PATH $HOME/.local/bin $PATH $HOME/.dotnet/tools
set -x PATH $PATH $HOME/.cargo/bin
set -x PATH $PATH $HOME/.local/scripts
set -x PATH $PATH /opt/nvim-linux64/bin
set -x PATH $PATH /usr/local/go/bin
set -x PATH $PATH $HOME/.tmuxifier/bin
set -x PATH $PATH $HOME/.local/azuredatastudio-linux-x64/bin

# oh-my-posh initialization
oh-my-posh init fish --config ~/.config/oh-my-posh/catppuccin.omp.json | source

# Neofetch
neofetch
