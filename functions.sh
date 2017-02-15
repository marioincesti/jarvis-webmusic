#!/bin/bash
# Here you can create functions which will be available from the commands file
# You can also use here user variables defined in your config file
# To avoid conflicts, name your function like this
# pg_XX_myfunction () { }
# pg for PluGin
# XX is a short code for your plugin, ex: ww for Weather Wunderground
# You can use translations provided in the language folders functions.sh
jv_pg_bitcoin () {
	curl -s 'http://api.coindesk.com/v1/bpi/currentprice.json' | jq -r '.bpi.EUR.rate_float' | cut -b 1-5
}
