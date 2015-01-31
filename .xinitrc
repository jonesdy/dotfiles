if [ -d /etc/X11/xinit/xinitrc.d ]; then
   for f in /etc/X11/xinit/xinitrc.d/*; do
      [ -x "$f" ] && . "$f"
   done
   unset f
fi

xset -b &
xrdb -merge ~/.Xresources &
#mpd &
#urxvt &
#feh --bg-scale ~/.wallpaper.jpg &
sxhkd -c /home/dylan/.config/sxhkd/sxhkdrc &
xsetroot -cursor_name left_ptr &
#parcellite &
exec xfce4-session &
compton &
conky --config ~/.compton.conf &
exec bspwm
