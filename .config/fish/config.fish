function fish_prompt -d "Write out the prompt"
    # This shows up as USER@HOST /home/user/ >, with the directory colored
    # $USER and $hostname are set by fish, so you can just use them
    # instead of using `whoami` and `hostname`
    printf '%s@%s %s%s%s > ' $USER $hostname \
        (set_color $fish_color_cwd) (prompt_pwd) (set_color normal)
end

if status is-interactive
    # Commands to run in interactive sessions can go here
    set fish_greeting

end

# if status is-interactive
    # if not set -q TMUX
        # tmux attach-session -t default || tmux new-session -s default
    # end
# end

zoxide init fish | source
starship init fish | source
if test -f ~/.cache/ags/user/generated/terminal/sequences.txt
    cat ~/.cache/ags/user/generated/terminal/sequences.txt
end

# alias "ls"="eza"
alias "q"="exit"
alias ":q"="exit"
# alias "l"="eza"
# alias "la"="eza -la"
# alias "sl"="eza"
alias "lg"="lazygit"
alias "v"="nvim"
alias "mkdir"="mkdir -p"
alias "tk"="tmux kill-server"
alias "zk"="zellij kill-all-sessions"

alias "gs"="git status"
alias "gd"="git diff"
alias "gc"="git commit"
alias "ga"="git add"
alias "gp"="git push"
alias "gpm"="git push -u origin main"
alias "db"="distrobox"
# alias "db-init-kali"="distrobox create --name kali -i docker.io/kalilinux/kali-rolling:latest --home /home/tamara/distrobox/kali --init"
alias "db-init-kali"="distrobox create --name kali -i docker.io/kalilinux/kali-rolling:latest --init"
alias "db-init-fedora"="distrobox create --name fedora -i registry.fedoraproject.org/fedora-toolbox:latest"
alias "db-init-gentoo"="distrobox create --name gentoo -i docker.io/gentoo/stage3:latest --home /home/tamara/distrobox/gentoo"
alias "kali"="distrobox enter kali"
alias "gentoo"="distrobox enter gentoo"
alias "fedora"="distrobox enter fedora"
alias "car"="bat"

# function fish_prompt
#   set_color cyan; echo (pwd)
#   set_color green; echo '> '
# end
#

# set -Ux ANDROID_HOME /home/tamara/Android/Sdk

#set -Ux fish_user_paths $ANDROID_HOME/tools $fish_user_paths

# set -Ux fish_user_paths $ANDROID_HOME/platform-tools $fish_user_paths 

set -Ux fish_user_paths /home/tamara/go/bin $fish_user_paths
set -Ux fish_user_paths /home/tamara/.cargo/bin $fish_user_paths

# fish_add_path /home/tamara/.spicetify


fish_add_path /home/tamara/.spicetify

fish_add_path /home/tamara/.spicetify

# Created by `pipx` on 2025-05-22 18:43:56
set PATH $PATH /home/tamara/.local/bin
