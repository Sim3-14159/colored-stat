# GNU Coreutils `stat`

This directory contains a modified copy of GNU Coreutils `stat`, based on
GNU Coreutils version `9.12.73-9c7cf2`.

The GNU-derived `stat` program and GNU/Gnulib files in this directory are
licensed under **GNU GPL version 3 or, at your option, any later version**.
See [`COPYING`](COPYING) and the copyright and license notices in the source
files. GNU and the Free Software Foundation are the upstream authors; this
project is not affiliated with or endorsed by them.

Changes made for this project include terminal color styling in `src/stat.c`,
a stat-only `Makefile`, and pruning unrelated Coreutils files. The project
maintainer's changes are copyright (C) 2026 Sim3-14159 and are offered under
the same GPL terms when distributed as part of this modified program.

## Source completeness

This is a reduced working tree, not a complete corresponding-source package
for distributing the built executable. In particular,
`lib/libcoreutils.a` contains object code whose matching source files and
complete build inputs are not all present here. The included `Makefile` builds
against that archive, but it does not make the archive's missing source
available.

Before distributing the executable, provide the complete corresponding
source for the exact binary, including the source for all bundled library
objects, applicable configuration/build scripts, and the changes made here,
or use another source-provision method allowed by GPL-3.0-or-later. Do not
present this reduced directory alone as the complete source for a distributed
binary.

The repository's top-level MIT license applies only to the separate
project-authored material that is not covered by the GPL notices in this
directory; it does not relicense GNU-derived files.
