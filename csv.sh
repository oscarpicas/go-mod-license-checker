#!/bin/bash

go-licenses csv "$(head -n 1 go.mod | awk '{ print $2 }')/..." 2>/dev/null | tee licenses.csv
