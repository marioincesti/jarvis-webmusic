#!/bin/bash
# Here you can create functions which will be available from the commands file
# You can also use here user variables defined in your config file
# To avoid conflicts, name your function like this
# pg_XX_myfunction () { }
# pg for PluGin
# XX is a short code for your plugin, ex: ww for Weather Wunderground
# You can use translations provided in the language folders functions.sh
jv_pg_webmusic () {
	youtube-dl -o /tmp - "gvsearch1:$1 $2 $3 $4 $5" | mplayer -vo fbdev2 -zoom -xy 1920 -really-quiet -cache 30720 -cache-min 2 /dev/fd/3 3<&0 </dev/tty &

}
