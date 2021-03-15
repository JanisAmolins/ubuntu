#/bin/sh

# See http://download.bareos.org/bareos/release/

# for applicable releases and distributions

# choosing version
DIST=xUbuntu_20.04

RELEASE=release/20

URL=http://download.bareos.org/bareos/$RELEASE/$DIST

# add the Bareos repository
wget -O /etc/apt/sources.list.d/bareos.list $URL/bareos.list

# add package key
wget -q $URL/Release.key -O- | apt-key add -

# install Bareos packages
apt-get update
apt-get install bareos bareos-database-postgresql