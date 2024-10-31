if type -q zoxide
    zoxide init fish | source
end

if type -q tmuxifier
    eval (tmuxifier init - fish)
end
