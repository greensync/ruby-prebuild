#!/bin/bash

set -ev

echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list

apt-get -y update
apt-get -y dist-upgrade
apt-get install -y tar bash curl libffi-dev git-core make g++ build-essential bison openssl libreadline6 libreadline6-dev zlib1g zlib1g-dev libssl-dev libyaml-dev libsqlite3-0 libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev autoconf libc6-dev ssl-cert subversion
apt-get install -y openjdk-8-jdk

rm -rf ruby-build /usr/local/ruby

git clone https://github.com/rbenv/ruby-build.git
cd ruby-build
./install.sh