#!/usr/bin/env bash


case "${1:-}" in
    "Shutdown") systemctl poweroff ;;
    "Reboot") systemctl reboot ;;
    # "Logout") i3-msg exit ;;
    *) 
        echo "Shutdown"
        echo "Reboot" ;;
        # echo "Logout" ;;
esac
