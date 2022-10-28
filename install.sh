if [[ $(/usr/bin/id -u) -ne 0 ]]; then
    echo "Super user privileges needed"
    exit
fi
chmod -v 644 grub.hook
cp -ip grub.hook /etc/pacman.d/hooks/
