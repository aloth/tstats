#!/usr/bin/env bash
# Written by Alexander Loth, 2015
# http://alexloth.com/2015/07/26/log-twitter-follower-stats-ifttt-google-spreadsheet/
# License: GNU GENERAL PUBLIC LICENSE Version 3

trigger="your IFTTT trigger event name"
secret="your IFTTT secret key"
screenname="your Twitter screen name"

# Collect stats from Twitter
read stats < <(t whois $screenname --csv | tail -1)

# Split string into an array
IFS=',' read -r -a array <<< "$stats"

# Form JSON
json="{\"value1\":\"${array[3]}\",\"value2\":\"${array[6]}\",\"value3\":\"${array[7]}\"}"

# Send to IFTTT
curl -X POST -H "Content-Type: application/json" -d "${json}" https://maker.ifttt.com/trigger/${trigger}/with/key/${secret}
