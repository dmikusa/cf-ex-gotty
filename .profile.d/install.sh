#!/bin/bash
sleep 2
echo -n "Installing gotty..."
curl -s -L -o "$HOME/linux_amd64.tar.gz" "https://github.com/yudai/gotty/releases/download/v0.0.11/linux_amd64.tar.gz"
tar zxf "$HOME/linux_amd64.tar.gz"
mv gotty app/
rm "$HOME/linux_amd64.tar.gz"
ls -la 
ls -la "$HOME/"
chmod 755 "$HOME/gotty"
echo " done".
