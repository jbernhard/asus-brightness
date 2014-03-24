#!/usr/bin/zsh


screenpath='/sys/class/backlight/intel_backlight'
screenstate="$screenpath/brightness"
screenmax=`<$screenpath/max_brightness`

kbpath='/sys/class/leds/asus::kbd_backlight'
kbstate="$kbpath/brightness"
kbmax=`<$kbpath/max_brightness`
kbmin=0



case $1/$2 in
  # set permissions to allow user control of brightness
  # turn keyboard backlight off
  # intended for use during system startup
  start/) 
    while [[ ! -f $kbstate ]]; do
      sleep .5
    done

    # systemd appears to handle this now
    #echo $kbmin > $kbstate
    chgrp users $kbstate
    chmod g+w $kbstate
    ;;

  # disallow user control
  # intended for use during shutdown
  stop/) 
    chgrp root $kbstate
    chmod g-w $kbstate
    ;;

  # read state
  screen/) echo $[ 100. * `<$screenstate` / $screenmax ] ;;
  kb/) <$kbstate ;;

  # set keyboard brightness
  kb/min) echo $kbmin > $kbstate ;;
  kb/max) echo $kbmax > $kbstate ;;
  kb/-) state=`<$kbstate`; [[ $state == $kbmin ]] || echo $[$state - 1] > $kbstate ;;
  kb/+) state=`<$kbstate`; [[ $state == $kbmax ]] || echo $[$state + 1] > $kbstate ;;
  kb/[0-3]) echo $2 > $kbstate ;;

  # help
  *)
  cat <<EOF
usage:
$0 (start|stop)
$0 screen
$0 kb (min|max|-|+|<0-3>)
EOF
    ;;
esac

