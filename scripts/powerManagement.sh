#!/bin/bash

case $BLOCK_BUTTON in

    # Middle click
    # reboot
    2) i3-nagbar -t warning -m 'Do you really want to reboot the system ?' -b 'Yes' 'i3-msg reboot' ;;

    # right click
    # shutdown
    3) i3-nagbar -t warning -m 'Do you really want to shutdown the system ?' -b 'Yes' `systemctl shutdown` ;;
	       
esac

echo " "
