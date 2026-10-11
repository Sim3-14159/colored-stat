# LOLstat&mdash;`stat`, with ![color](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSI1MDAiIGhlaWdodD0iMTUwIiB2aWV3Qm94PSIwIDAgNTAwIDE1MCI+CiAgPHJlY3Qgd2lkdGg9IjEwMCUiIGhlaWdodD0iMTAwJSIgZmlsbD0id2hpdGUiLz4KICA8dGV4dAogICAgeD0iNTAlIgogICAgeT0iMTA1IgogICAgdGV4dC1hbmNob3I9Im1pZGRsZSIKICAgIGZvbnQtZmFtaWx5PSJBcmlhbCwgSGVsdmV0aWNhLCBzYW5zLXNlcmlmIgogICAgZm9udC1zaXplPSIxMDAiCiAgICBmb250LXdlaWdodD0iYm9sZCIKICA+PHRzcGFuIGZpbGw9InJlZCI+YzwvdHNwYW4+PHRzcGFuIGZpbGw9InllbGxvdyI+bzwvdHNwYW4+PHRzcGFuIGZpbGw9InB1cnBsZSI+bDwvdHNwYW4+PHRzcGFuIGZpbGw9ImdyZWVuIj5vPC90c3Bhbj48dHNwYW4gZmlsbD0iYnJvd24iPnI8L3RzcGFuPjwvdGV4dD4KPC9zdmc+) 😛

A mostly vibe-coded experiment: take GNU Coreutils' `stat` and add optional
terminal color styling. It is based on GNU Coreutils
`9.12.73-9c7cf2`—not a from-scratch reimplementation.

## Build

Run `make`. The build currently links against the checked-out `lib/libcoreutils.a`
archive, so a fresh checkout needs that archive supplied separately; generated
binaries, object files, dependency files, and archives are ignored by Git.

## Licensing and attribution

GNU Coreutils `stat` is licensed under the **GNU GPL version 3 or, at your
option, any later version**; see [`COPYING`](COPYING). Individual Gnulib files
may carry different terms, including the **GNU Lesser GPL version 2.1 or any
later version**; retain and follow the notices in each file, and see
[`COPYING.LESSER`](COPYING.LESSER). GNU and the Free Software Foundation are
upstream authors; this project is not affiliated with or endorsed by them.

The color changes are noted in `src/stat.c` and are distributed under the
applicable terms for that modified file.

## Source completeness

This reduced tree is not complete corresponding source for distributing the
built executable: `lib/libcoreutils.a` contains object code whose matching
source files and full build inputs are not present. Before distributing the
executable, provide the complete corresponding source and build materials
required by the applicable licenses.
