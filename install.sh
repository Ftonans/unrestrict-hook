#!/usr/bin/env bash

if [[ $(/usr/bin/id -u) -ne 0 ]]; then
  echo "Super user privileges needed"
  exit
fi
chmod -v 644 grub.hook
cp -p grub-unrestrict.hook /etc/pacman.d/hooks/
echo "Done"
