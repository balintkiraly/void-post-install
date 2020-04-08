#!/bin/sh
echo "Install git and clone the VOPI repository to start installation..."

sudo xbps-install git
git clone https://github.com/balintkiraly/vopi.git /tmp/vopi
latest_commit_hash=$(git rev-parse HEAD)
echo "$latest_commit_hash" > "$HOME/.vopi" || exit

cd /tmp/vopi || exit
bash ./src/main.sh
rm -rf /tmp/vopi
