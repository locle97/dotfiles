# File system
alias ls 'eza -lh --group-directories-first --icons'
alias lsa 'ls -a'
alias lt 'eza --tree --level=2 --long --icons --git'
alias lta 'lt -a'
alias ff 'fzf --preview "bat --style=numbers --color=always {}"'
alias fd 'fdfind'
alias fp 'tms'
alias cd 'z'

# Directories
alias .. 'cd ..'
alias ... 'cd ../..'
alias .... 'cd ../../..'

# Tools
alias n 'nvim'
alias g 'git'
alias d 'docker'
alias r 'rails'
alias lzg 'lazygit'
alias lzd 'lazydocker'

# Git
alias gcm 'git commit -m'
alias gcam 'git commit -a -m'
alias gcad 'git commit -a --amend'

# Key binding for tmuxify-code
function bind_tmuxify_code
    command tmuxify-code
    commandline -f repaint
end

if status is-interactive
    bind \cf bind_tmuxify_code

    # Binding ctrl P to quickly run command nvim (fzf)
    bind \cp 'fzf --preview "batcat --style=numbers --color=always {}" | xargs -r nvim'
end
