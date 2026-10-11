# LOLstat&mdash;`stat`, with <image src="data:image/svg+xml,%3Csvg xmlns='<http://www.w3.org/2000/svg>' width='500' height='150' viewBox='0 0 500 150'%3E%3Crect width='100%25' height='100%25' fill='white'/%3E%3Ctext x='50%25' y='105' text-anchor='middle' font-family='Arial,sans-serif' font-size='100' font-weight='bold'%3E%3Ctspan fill='red'%3Ec%3C/tspan%3E%3Ctspan fill='yellow'%3Eo%3C/tspan%3E%3Ctspan fill='purple'%3El%3C/tspan%3E%3Ctspan fill='green'%3Eo%3C/tspan%3E%3Ctspan fill='brown'%3Er%3C/tspan%3E%3C/text%3E%3C/svg%3E" alt="color"> 😛

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
