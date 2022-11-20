#!/usr/bin/env bash

# Checking root permissions
if [ "$(/usr/bin/id -u)" != 0 ]
then
  echo "Super user privileges needed" >&2 
  exit 1
fi

# Installation
chmod -v 644 grub.hook
cp -p grub-unrestrict.hook /etc/pacman.d/hooks/
echo "Done"
