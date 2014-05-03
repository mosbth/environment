#!bin/sh

xrdb -load $HOME/.Xresources         # update x resources db
#xscreensaver -no-splash &         # starts screensaver daemon 
#xmodmap ~/.xmodmap &


# 
#session=${1:-kde}

#case $session in
#        #enlightenment) exec enlightenment_start;;
#        #fluxbox) exec startfluxbox;;
#        gnome) exec gnome-session;;
#        #lxde) exec startlxde;;
#        kde) exec startkde;;
#        #openbox) exec openbox-session;;
#        #xfce) exec startxfce4;;
#        # No known session, try to run it as command
#        *) exec $1;;                
#esac

#exec startkde
exec startlxde

