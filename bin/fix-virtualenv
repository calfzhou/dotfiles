#!/usr/bin/env bash

ENV_PATH="$(dirname "$(dirname "$(which pip)")")"
SYSTEM_VIRTUALENV="$(which -a virtualenv|tail -1)"

BAD_ENV_PATHS="/usr/local"

echo "Ensure the root of the broken virtualenv:"
echo "    $ENV_PATH"

if [[ -z "$ENV_PATH" ]] || [[ "$ENV_PATH" = *"$BAD_ENV_PATHS"* ]]; then
    echo "The root path above doesn't seems to be a valid one."
    echo "Please make sure you ACTIVATED the broken virtualenv."
    echo "‼️  Exiting for your safety... (thanks @laymonk for reporting this)"
    exit 1
fi

read -p "‼️  Press Enter if you are not sure (y/N) " -n 1 -r
echo
if [[ $REPLY =~ ^[Yy]$ ]]; then
    echo "♻️  Removing old symbolic links......"
    find "$ENV_PATH" -type l -delete -print
    echo "💫  Creating new symbolic links......"
    $SYSTEM_VIRTUALENV "$ENV_PATH"
    echo "🎉  Done!"
fi
