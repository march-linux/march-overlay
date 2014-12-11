[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources
# theme
export GTK2_RC_FILES="$HOME/.gtkrc-2.0"

# IM
export GTK_IM_MODULE=xim
export QT_IM_MODULE=xim
export XMODIFIERS="@im=fcitx"
export EDITOR=vim
LANG=zh_TW.UTF-8 fcitx
~/.config/wallpaper/wallpaper.sh &
exec i3
