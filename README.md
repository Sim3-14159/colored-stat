# LOLstat&mdash;`stat`, with $\color{red}c\color{yellow}o\color{purple}l\color{green}o\color{red}r$ 😛

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
