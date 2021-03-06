#!/bin/sh

# This file contains local settings for capture-tcpdump.sh and
# capture-dnscap.sh scripts.  Rename it to settings.sh and customize.
# See capture-tcpdump.sh or capture-dnscap.sh for explanations of each
# variable.


# Settings that you should customize
#
#IFACES="em0 em1"
IFACES="em1"
#NODENAME=`hostname`
#OARC_MEMBER=test
QUERIES_ONLY="no"

# Leave these commented for dry runs and uncomment them for
# the actual DITL data collection.  NOTE, times must be
# given in UTC!
#
#START_T='2013-05-28 11:00:00'
#STOP_T='2013-05-30 13:00:00'

# Settings that you probably wont need to change
#
SSH_ID="/root/.ssh/id_rsa"
RM_AFTER_UPLOAD="yes"
# Set to yes if you want to send info about uploads in syslog
SYSLOG_UPLOAD="yes"
#DESTINATIONS=""
#DO_TCP="yes"
#DO_V6="yes"
#DO_FRAGS="yes"
#DNSCAP="/usr/local/bin/dnscap"
#TCPDUMP="/usr/sbin/tcpdump"
#IFCONFIG="/sbin/ifconfig"
#NTPDATE="/usr/sbin/ntpdate"
#SSH_BIN="/usr/bin/ssh"
#TCP_SPLIT="/usr/local/bin/tcpdump-split"
#SAVEDIR="."
SAVEDIR=/root/data-monitor/data

# Settings that you shouldn't change
# 10 minutes
INTERVAL="600"
# For dnscap
KICK_CMD="/bin/bash data-commit.sh $SAVEDIR"
# For pcapdump
#KICK_CMD="(cd /usr/local/Yeti; ./data-commit.sh $SAVEDIR) && echo Rotating"

