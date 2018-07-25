# [![Application icon](https://github.com/aloth/tstats/raw/master/blog/tstats.png)][blog]
[blog]: http://alexloth.com/2015/07/26/log-twitter-follower-stats-ifttt-google-spreadsheet/

# tstats

#### A logging tool for Twitter Follower Stats.

This script will log your Twitter Follower statistics to a Google spreadsheet.


## Prerequisites

Ruby:

    sudo apt-get install ruby-dev

[Twitter CLI](https://github.com/sferik/t):

    gem install t

Authorize your Twitter account:

    t authorize

A Google account, as the log is saved to a spreadsheet in your Google Drive. 

An IFTTT account.
 
Connect the Maker and Google Drive channels to your IFTTT account.


# Usage

cd into the tstats directory and edit the script with your IFTTT secret key, your IFTTT trigger event name and your Twitter screen name. Make the script executable with:

    chmod +x tstats.sh

Then simply run it with:

    ./tstats.sh

If you receive a "Congratulations" message and an entry is added to your spread sheet, you can go ahead and add it to your cron to run at a predetermined time.

To have this script run every 24 hours, add this to your crontab (you may need to change the path):

    42,09 * * * * /home/user/tstats/tstats.sh >/dev/null 2>&1


# Trivia

This script was published on the [alexloth.com blog](http://alexloth.com/2015/07/26/log-twitter-follower-stats-ifttt-google-spreadsheet/) before it was moved to this Github repository.


# Licenses

The tstats script is released under the [GNU GENERAL PUBLIC LICENSE Version 3](https://www.gnu.org/licenses/gpl-3.0.en.html).

Media files are released under the [Creative Commons Attribution-NonCommercial 4.0 International](https://creativecommons.org/licenses/by-sa/4.0/) license. This allows for *non-commercial* use as long as credit is given and that derivative works (works based on the CC licensed data) are also made available under the same license.