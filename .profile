# set screen layout
xrandr --output HDMI-0 --mode 1920x1080 --pos 0x180 --rotate normal --output DP-0 --mode 2560x1440 --pos 1920x0 --rotate normal

# set keyboard layout and disable caps
setxkbmap -option caps:none
setxkbmap -model pc105 -layout us -variant altgr-intl

export EDITOR="vim"
export TERMINAL="alacritty"
export BROWSER="brave"
export READER="zathura"
export MANPAGER="nvim -c 'set ft=man' -"
export GTK_THEME=Adwaita:dark
