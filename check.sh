#!/bin/bash 

# skip non-go code
output=$(go-licenses check "$(head -n 1 go.mod | awk '{ print $2 }')/..." 2>&1 | grep -v W0204 | grep -v \.s)
if [ -z "$output" ]; then
    echo "License Check Success"
    exit 0
fi

echo "$output"
echo "License Check Failed"
exit 1
