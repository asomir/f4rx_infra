#!/bin/bash

# скрипт install_mongodb.sh - должен содержать команды по установке MongoDB

set -e

err_report() {
  echo "errexit on line $(caller)" >&2
}

trap err_report ERR

if [[ $EUID -eq 0 ]]; then
   echo "This script must be run as unprivileged user" 1>&2
   exit 1
fi

cd ~/
git clone https://github.com/Otus-DevOps-2017-11/reddit.git
cd reddit/
bundle install
puma -d
pgrep -f "puma"