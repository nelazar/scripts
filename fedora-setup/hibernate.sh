#!/usr/bin/bash

# Constants
HIBERNATION_DELAY=3600

# Create sleep configuration file
touch /etc/systemd/sleep.conf
cat > /etc/systemd/sleep.conf << EOL
[Sleep]
HibernateDelaySec=${HIBERNATION_DELAY}
EOL

# Edit lid configuration file
sed -c -i "s/\(HandleLidSwitch *= *\).*/\1suspend-then-hibernate/" /etc/systemd/logind.conf

# Install dependencies
dnf install -y audit policycoreutils-python-utils libnotify

# Install hibernate extension
mkdir -p ../downloads
mkdir -p ~/extensions/gnome-shell
cd ../downloads
wget https://github.com/ctsdownloads/gnome-shell-extension-hibernate-status/archive/refs/heads/master.zip -O hibernate-extension.zip
unzip hibernate-extension.zip -d ~/extensions/gnome-shell/hibernate-status
mkdir -p ~/.local/share/gnome-shell/extensions/hibernate-status@ctsdownloads
cp -r ~/extensions/gnome-shell/hibernate-status/hibernate-status@ctsdownloads/* ~/.local/share/gnome-shell/extensions/hibernate-status@ctsdownloads
gnome-extensions enable hibernate-status@ctsdownloads