[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources
# theme
export GTK2_RC_FILES="$HOME/.gtkrc-2.0"

~/.config/wallpaper/download &
compton -b

# IM
export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
export XMODIFIERS=@im=fcitx
LANG=zh_TW.UTF-8 fcitx

exec i3
