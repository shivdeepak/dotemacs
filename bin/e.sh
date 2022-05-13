emacsclient --no-wait $1 2> /dev/null
if [[ $? -eq 1 ]]; then
    (nohup /Applications/Emacs.app/Contents/MacOS/Emacs $1 2>&1 > /dev/null &)
fi
