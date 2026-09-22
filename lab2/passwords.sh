#!/bin/bash

PASSWORD_FILE="passwords.txt"
OUTPUT_DIRECTORY="password_files"

if [[ ! -f "$PASSWORD_FILE" ]]; then
	echo "Error: $PASSWORD_FILE was not found."
	exit 1
fi

mkdir -p "$OUTPUT_DIRECTORY"

counter=1

while IFS= read -r password; do
	if [[ -n "$password" ]]; then
		echo "$password"
		printf '%s\n' "$password" > "$OUTPUT_DIRECTORY/password_${counter}.txt"
		((counter++))
	fi
done < <(sort "$PASSWORD_FILE")

echo
echo "Created $((counter-1)) password files."
