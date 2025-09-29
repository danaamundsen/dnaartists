#!/usr/bin/env bash
# Find and replace for tags in md files in the _posts dir

# exit immediately if there's an error
set -o errexit

# if number of args not-equals 2
if [ $# -ne 2 ]; then
  echo "Usage: $0 \"old tag\" \"new tag\"" >&2
  exit 1
fi

OLD="$1"
NEW="$2"

for file in _posts/*.md; do
  sed -i '' -E "s/^tags:(.*)\"${OLD}\"/tags:\1\"${NEW}\"/" "$file"
done

echo "Done renaming '${OLD}' → '${NEW}'"

