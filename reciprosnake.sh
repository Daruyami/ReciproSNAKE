#!/bin/sh
echo -ne '\033c\033]0;reciprosnake\a'
base_path="$(dirname "$(realpath "$0")")"
"$base_path/reciprosnake.x86_64" "$@"
