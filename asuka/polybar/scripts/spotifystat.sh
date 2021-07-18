if pgrep -x "spotify" > /dev/null
then
    python ~/.config/polybar/scripts/spotify_status.py -t 25 -f '  {song}:{artist}'
else
    echo "  Offline ┬┴┬┴┤ʕ•ᴥ├┬┴┬┴"
fi

