#!/usr/bin/env bash

stat "$@" | awk '
BEGIN {
    reset   = "\033[0m"
    bold    = "\033[1m"
    dim     = "\033[2m"

    red     = "\033[31m"
    green   = "\033[32m"
    yellow  = "\033[33m"
    blue    = "\033[34m"
    magenta = "\033[35m"
    cyan    = "\033[36m"
    white   = "\033[37m"
}

# Filename
/^  File:/ {
    sub(/^  File:/, bold cyan "  File:" reset)
    print
    next
}

# Size and block information
/^  Size:/ {
    gsub(/Size:/, yellow "&" reset)
    gsub(/Blocks:/, dim "&" reset)
    gsub(/IO Block:/, dim "&" reset)
    print
    next
}

# File type
/^  FileType:/ {
    print
    next
}

# Device and inode
/^  Device:/ {
    gsub(/Device:/, blue "&" reset)
    gsub(/Inode:/, magenta "&" reset)
    gsub(/Links:/, dim "&" reset)
    print
    next
}

# Permissions
/^  Access:/ {
    line = $0

    # Color the label
    sub(/Access:/, bold magenta "Access:" reset, line)

    # Color symbolic permissions inside parentheses
    if (match(line, /\([^)]*\)/)) {
        perms = substr(line, RSTART + 1, RLENGTH - 2)
        colored = ""

        for (i = 1; i <= length(perms); i++) {
            c = substr(perms, i, 1)

            if (c == "r")
                colored = colored green c reset
            else if (c == "w")
                colored = colored yellow c reset
            else if (c == "x" || c == "s" || c == "t")
                colored = colored red c reset
            else
                colored = colored dim c reset
        }

        line = substr(line, 1, RSTART) colored substr(line, RSTART + RLENGTH - 1)
    }

    print line
    next
}

# Ownership
/^  Uid:/ {
    gsub(/Uid:/, blue "&" reset)
    gsub(/Gid:/, magenta "&" reset)
    print
    next
}

# Timestamps
/^  Modify:/ {
    sub(/Modify:/, green "&" reset)
    print
    next
}

/^  Change:/ {
    sub(/Change:/, cyan "&" reset)
    print
    next
}

/^  Birth:/ {
    sub(/Birth:/, blue "&" reset)
    print
    next
}

# Default
{ print }
'
