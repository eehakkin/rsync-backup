Backup configuration
====================

 - **[conf/backup-src-base]**
 - **[conf/backup-src-host]**
 - **[conf/backup-src-list]**
 - **[conf/backup-src-module]**
 - **[conf/backup-src-port]**
 - **[conf/backup-src-prefix]**
 - **[conf/backup-src-user]**
 - **[conf/copy-config]**
 - **[conf/create-config]**
 - **[conf/dump-config]**
 - **[conf/examples/]**
    - ...
 - **[conf/mirror-src-base]**
 - **[conf/mirror-src-host]**
 - **[conf/mirror-src-list]**
 - **[conf/mirror-src-module]**
 - **[conf/mirror-src-port]**
 - **[conf/mirror-src-prefix]**
 - **[conf/mirror-src-user]**
 - **[conf/pre.d/]**
    - ...
 - **[conf/purge-list]**
 - **[conf/rsync-config]**
 - **[conf/rsh]**
 - **[conf/tag-formats]**

The conf/backup-src-base file
-----------------------------
[conf/backup-src-base]: #the-confbackup-src-base-file

An optional configuration file used by **[backup-sources]**\(1\) used by
**[backup]**\(1\) containing the backup source base directory to be used to
augment the backup sources specified in the **[conf/backup-src-list]**
configuration file if the **[conf/backup-src-prefix]** configuration file does
not exist. The file must contain a line having the following form:
  * `<BASE-DIR>[/.[/]]`

Empty lines and comment lines (starting with a "#") are allowed, too.

The conf/backup-src-host file
-----------------------------
[conf/backup-src-host]: #the-confbackup-src-host-file

An optional configuration file used by **[backup-sources]**\(1\) used by
**[backup]**\(1\) containing the backup source host to be used to augment the
backup sources specified in the **[conf/backup-src-list]** configuration file
if the **[conf/backup-src-prefix]** configuration file does not exist. The
file must contain a line having the following form:
  * `<HOST>`

Empty lines and comment lines (starting with a "#") are allowed, too.

The conf/backup-src-list file
-----------------------------
[conf/backup-src-list]: #the-confbackup-src-list-file

A configuration file used by **[backup-sources]**\(1\) used by **[backup]**\(1\)
containing the backup sources to be copied to a newly created backup
directory when creating a new backup. The file must contain operand
lines having any the following forms:
  * `<SRC>`\
    A local source to be copied to a newly created backup directory.
  * `<BASE-DIR>/./[<SRC>]`\
    A local source to be copied to a newly created backup directory
    without the base directory.
  * `[<USER>@]<HOST>:<SRC>`\
    A remote shell source to be copied to a newly created backup
    directory.
  * `[<USER>@]<HOST>:<BASE-DIR>/./[<SRC>]`\
    A remote shell source to be copied to a newly created backup
    directory without the base directory.
  * `[<USER>@]<HOST>::<MODULE>[/[<SRC>]]`\
    A rsync daemon source to be copied to a newly created backup
    directory.
  * `[<USER>@]<HOST>::<MODULE>/<BASE-DIR>/./[<SRC>]`\
    An rsync daemon source to be copied to a newly created backup
    directory without the base directory.
  * `rsync://[<USER>@]<HOST>[:<PORT>]/<MODULE>[/[<SRC>]]`\
    A rsync daemon source to be copied to a newly created backup
    directory.
  * `rsync://[<USER>@]<HOST>[:<PORT>]/<MODULE>/<BASE-DIR>/./[<SRC>]`\
    An rsync daemon source to be copied to a newly created backup
    directory without the base directory.

These operands will be passed to the **[backup-create]**\(1\) tool. Empty lines
and comment lines (starting with a "#") are allowed, too.

It is also possible to specify the backup source base directory in the
**[conf/backup-src-base]** configuration file, to specify the backup source
host in the **[conf/backup-src-host]** configuration file, to specify the
backup source module in the **[conf/backup-src-module]** configuration file,
to specify the backup source port in the **[conf/backup-src-port]**
configuration file and to specify the backup source user in the
**[conf/backup-src-user]** configuration file or to specify these in the
**[conf/backup-src-prefix]** configuration file.

The conf/backup-src-module file
-------------------------------
[conf/backup-src-module]: #the-confbackup-src-module-file

An optional configuration file used by **[backup-sources]**\(1\) used by
**[backup]**\(1\) containing the backup source module to be used to augment the
backup source host specified in the **[conf/backup-src-host]** configuration
file and the backup sources specified in the **[conf/backup-src-list]**
configuration file if the **[conf/backup-src-prefix]** configuration file does
not exist. The file must contain a line having the following form:
  * `<MODULE>`

Empty lines and comment lines (starting with a "#") are allowed, too.

The conf/backup-src-port file
-----------------------------
[conf/backup-src-port]: #the-confbackup-src-port-file

An optional configuration file used by **[backup-sources]**\(1\) used by
**[backup]**\(1\) containing the backup source port to be used to augment the
backup source host specified in the **[conf/backup-src-host]** configuration
file, the backup source module specified in the **[conf/backup-src-module]**
configuration file and the backup sources specified in the
**[conf/backup-src-list]** configuration file if the **[conf/backup-src-prefix]**
configuration file does not exist. The file must contain a line having
the following form:
  * `<PORT>`

Empty lines and comment lines (starting with a "#") are allowed, too.

The conf/backup-src-prefix file
-------------------------------
[conf/backup-src-prefix]: #the-confbackup-src-prefix-file

An optional configuration file used by **[backup-sources]**\(1\) used by
**[backup]**\(1\) containing the backup source prefix to be used to augment the
backup sources specified in the **[conf/backup-src-list]** configuration file.
The file must contain a line having one of the following forms:
  * `<BASE-DIR>[/.[/]]`\
    A local base directory.
  * `[<USER>@]<HOST>:[<BASE-DIR>[/.[/]]]`\
    A remote shell host and an optional base directory.
  * `[<USER>@]<HOST>::[<MODULE>[/<BASE-DIR>[/.[/]]]]`\
    A rsync daemon host and an optional module and base directory.
  * `<USER>@`\
    A remote shell or an rsync daemon user.
  * `rsync://[<USER>@]<HOST>[:<PORT>][/<MODULE>[/<BASE-DIR>[/.[/]]]]`\
    A rsync daemon host and an optional module and base directory.

Empty lines and comment lines (starting with a "#") are allowed, too.

The conf/backup-src-user file
-----------------------------
[conf/backup-src-user]: #the-confbackup-src-user-file

An optional configuration file used by **[backup-sources]**\(1\) used by
**[backup]**\(1\) containing the backup source user to be used to augment the
backup source host specified in the **[conf/backup-src-host]** configuration
file and the backup sources specified in the **[conf/backup-src-list]**
configuration file if the **[conf/backup-src-prefix]** configuration file does
not exist. The file must contain a line having the following form:
  * `<USER>`

Empty lines and comment lines (starting with a "#") are allowed, too.

The conf/copy-config file
-------------------------
[conf/copy-config]: #the-confcopy-config-file

An optional configuration file used by **[backup-copy-rsync]**\(1\) used by
**[backup-copy]**\(1\) used by **[backup-mirror-sources]**\(1\) used by **[backup-mirror]**\(1\)
containing long option names (without leading slashes) and optional
option arguments to be passed to **rsync**(1) when copying a backup
directory.

The conf/create-config file
---------------------------
[conf/create-config]: #the-confcreate-config-file

An optional configuration file used by **[backup-create-rsync]**\(1\) used by
**[backup-create]**\(1\) used by **[backup-sources]**\(1\) used by **[backup]**\(1\) containing
long option names (without leading slashes) and optional option
arguments to be passed to **rsync**(1) when creating a new backup directory.

The conf/dump-config file
-------------------------
[conf/dump-config]: #the-confdump-config-file

An optional configuration file used by some **[conf/pre.d/]***-dump scripts
used by **[backup-prepare]**\(1\) used by **[backup]**\(1\) containing configuration
variable assignments.

The conf/examples/ directory
----------------------------
[conf/examples/]: #the-confexamples-directory

A directory containing sample configuration files.

The conf/mirror-src-base file
-----------------------------
[conf/mirror-src-base]: #the-confmirror-src-base-file

An optional configuration file used by **[backup-mirror-sources]**\(1\) used by
**[backup-mirror]**\(1\) containing the mirror source base directory to be used
to augment the mirror sources specified in the **[conf/mirror-src-list]**
configuration file if the **[conf/mirror-src-prefix]** configuration file does
not exist. The file must contain a line having the following form:
  * `<BASE-DIR>`

Empty lines and comment lines (starting with a "#") are allowed, too.

The conf/mirror-src-host file
-----------------------------
[conf/mirror-src-host]: #the-confmirror-src-host-file

An optional configuration file used by **[backup-mirror-sources]**\(1\) used by
**[backup-mirror]**\(1\) containing the mirror source host to be used to augment
the mirror sources specified in the **[conf/mirror-src-list]** configuration
file if the **[conf/mirror-src-prefix]** configuration file does not exist.
The file must contain a line having the following form:
  * `<HOST>`

Empty lines and comment lines (starting with a "#") are allowed, too.

The conf/mirror-src-list file
-----------------------------
[conf/mirror-src-list]: #the-confmirror-src-list-file

A configuration file used by **[backup-mirror-sources]**\(1\) used by
**[backup-mirror]**\(1\) containing the mirror sources to be copied to newly
created backup directories when copying backup directories. The file
must contain operand lines having any the following forms:
  * `<SRC>/[.]`\
    A local directory containing backup directories to be copied.
  * `<SRC>`\
    A local backup directory to be copied.
  * `[<USER>@]<HOST>:<SRC>/[.]`\
    A remote directory containing backup directories to be copied
    via a remote shell.
  * `[<USER>@]<HOST>:<SRC>`\
    A remote backup directory to be copied via a remote shell.
  * `[<USER>@]<HOST>::<MODULE>[/<SRC>]/[.]`\
    A remote directory containing backup directories to be copied
    via an rsync daemon.
  * `[<USER>@]<HOST>::<MODULE>/<SRC>`\
    A remote backup directory to be copied via an rsync daemon.
  * `rsync://[<USER>@]<HOST>[:<PORT>]/<MODULE>[/<SRC>]/[.]`\
    A remote directory containing backup directories to be copied
    via an rsync daemon.
  * `rsync://[<USER>@]<HOST>[:<PORT>]/<MODULE>/<SRC>`\
    A remote backup directory to be copied via an rsync daemon.

The operands specifying directories containing backup directories will
be passed to the **[backup-rsync]**\(1\) tool. The backup directories within
these directories as well as the operands specifying backup directories
will be passed to the **[backup-copy]**\(1\) tool. Empty lines and comment lines
(starting with a "#") are allowed, too.

It is also possible to specify the mirror source base directory in the
**[conf/mirror-src-base]** configuration file, to specify the mirror source
host in the **[conf/mirror-src-host]** configuration file, to specify the
mirror source module in the **[conf/mirror-src-module]** configuration file,
to specify the mirror source port in the **[conf/mirror-src-port]**
configuration file and to specify the mirror source user in the
**[conf/mirror-src-user]** configuration file or to specify these in the
**[conf/mirror-src-prefix]** configuration file.

The conf/mirror-src-module file
-------------------------------
[conf/mirror-src-module]: #the-confmirror-src-module-file

An optional configuration file used by **[backup-mirror-sources]**\(1\) used by
**[backup-mirror]**\(1\) containing the mirror source module to be used to
augment the mirror source host specified in the **[conf/mirror-src-host]**
configuration file and the mirror sources specified in the
**[conf/mirror-src-list]** configuration file if the **[conf/mirror-src-prefix]**
configuration file does not exist. The file must contain a line having
the following form:
  * `<MODULE>`

Empty lines and comment lines (starting with a "#") are allowed, too.

The conf/mirror-src-port file
-----------------------------
[conf/mirror-src-port]: #the-confmirror-src-port-file

An optional configuration file used by **[backup-mirror-sources]**\(1\) used by
**[backup-mirror]**\(1\) containing the mirror source port to be used to augment
the mirror source host specified in the **[conf/mirror-src-host]**
configuration file, the mirror source module specified in the
**[conf/mirror-src-module]** configuration file and the mirror sources
specified in the **[conf/mirror-src-list]** configuration file if the
**[conf/mirror-src-prefix]** configuration file does not exist. The file must
contain a line having the following form:
  * `<PORT>`

Empty lines and comment lines (starting with a "#") are allowed, too.

The conf/mirror-src-prefix file
-------------------------------
[conf/mirror-src-prefix]: #the-confmirror-src-prefix-file

An optional configuration file used by **[backup-mirror-sources]**\(1\) used by
**[backup-mirror]**\(1\) containing the mirror source prefix to be used to
augment the mirror sources specified in the **[conf/mirror-src-list]**
configuration file. The file must contain a line having one of the
following forms:
  * `<BASE-DIR>`\
    A local base directory.
  * `[<USER>@]<HOST>:[<BASE-DIR>]`\
    A remote shell host and an optional base directory.
  * `[<USER>@]<HOST>::[<MODULE>[/<BASE-DIR>]]`\
    A rsync daemon host and an optional module and base directory.
  * `<USER>@`\
    A remote shell or an rsync daemon user.
  * `rsync://[<USER>@]<HOST>[:<PORT>][/<MODULE>[/<BASE-DIR>]]`\
    A rsync daemon host and an optional module and base directory.

Empty lines and comment lines (starting with a "#") are allowed, too.

The conf/mirror-src-user file
-----------------------------
[conf/mirror-src-user]: #the-confmirror-src-user-file

An optional configuration file used by **[backup-mirror-sources]**\(1\) used by
**[backup-mirror]**\(1\) containing the mirror source user to be used to augment
the mirror source host specified in the **[conf/mirror-src-host]**
configuration file and the mirror sources specified in the
**[conf/mirror-src-list]** configuration file if the **[conf/mirror-src-prefix]**
configuration file does not exist. The file must contain a line having
the following form:
  * `<USER>`

Empty lines and comment lines (starting with a "#") are allowed, too.

The conf/pre.d/ directory
-------------------------
[conf/pre.d/]: #the-confpred-directory

An optional directory used by **[backup-prepare]**\(1\) used by **[backup]**\(1\)
containing scripts which are executed in lexical order of names when
preparing for backups. The names of the files must consist of only
characters matching the pattern `[[:alnum:]_.-]`.

The conf/purge-list file
------------------------
[conf/purge-list]: #the-confpurge-list-file

An optional configuration file used by **[backup-purge]**\(1\) used by **[backup]**\(1\)
and **[backup-mirror]**\(1\) containing patterns and ages which override the
default ones. The file must contain operand lines having the following
form:
  * `<PATTERN>=<DAYS>`

Empty lines and comment lines (starting with a "#") are allowed, too.
Backup directories matching \<PATTERN\> are deleted if they are over
\<DAYS\> days old.

Special patterns:
  * `yearly`\
    Matches yearly backup directories.
    This corresponds the following pattern:
      - `[0-9][0-9][0-9][0-9]`

    (for `<YEAR>`).
  * `monthly`\
    Matches monthly backup directories.
    This corresponds the following patterns:
      - `[0-9][0-9][0-9][0-9][0-9][0-9]`
      - `[0-9][0-9][0-9][0-9]-[0-9][0-9]`

    (for `<YEAR>[-]<MONTH>`).
  * `weekly`\
    Matches weekly backup directories.
    This corresponds the following patterns:
      - `[0-9][0-9][0-9][0-9]W[0-9][0-9]`
      - `[0-9][0-9][0-9][0-9]-W[0-9][0-9]`

    (for `<YEAR>[-]W<WEEK>`).
  * `daily`\
    Matches daily backup directories.
    This corresponds the following patterns:
      - `[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]`
      - `[0-9][0-9][0-9][0-9]-[0-9][0-9]-[0-9][0-9]`
      - `[0-9][0-9][0-9][0-9]W[0-9][0-9][0-9]`
      - `[0-9][0-9][0-9][0-9]-W[0-9][0-9]-[0-9]`

    (for `<YEAR>[-]<MONTH>[-]<DAY>` and `<YEAR>[-]W<WEEK>[-]<DAY>`).
  * `hourly`\
    Matches hourly, minutely and secondly backup directories.
    This corresponds the following patterns:
      - `[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]T[0-9][0-9]*`
      - `[0-9][0-9][0-9][0-9]-[0-9][0-9]-[0-9][0-9]T[0-9][0-9]*`
      - `[0-9][0-9][0-9][0-9]W[0-9][0-9][0-9]T[0-9][0-9]*`
      - `[0-9][0-9][0-9][0-9]-W[0-9][0-9]-[0-9]T[0-9][0-9]*`

    (for
    `<YEAR>[-]<MONTH>[-]<DAY>T<HOUR>[[:]<MINUTE>[[:]<SECOND>]]` and
    `<YEAR>[-]W<WEEK>[-]<DAY>T<HOUR>[[:]<MINUTE>[[:]<SECOND>]]`).
  * `fake-yearly`\
    Matches yearly backup directories if the year is 9999.
    This corresponds the pattern `9999`.
  * `fake-monthly`\
    Matches monthly backup directories if the month is 99.
    This corresponds the following patterns:
      - `[0-9][0-9][0-9][0-9]99`
      - `[0-9][0-9][0-9][0-9]-99`

    (for `<YEAR>[-]99`).
  * `fake-weekly`\
    Matches weekly backup directories if the week is 99.
    This corresponds the following patterns:
      - `[0-9][0-9][0-9][0-9]W99`
      - `[0-9][0-9][0-9][0-9]-W99`

    (for `<YEAR>[-]W99`).
  * `fake-daily`\
    Matches daily backup directories
    if the day of a month is 99 or the day of a week is 9.
    This corresponds the following patterns:
      - `[0-9][0-9][0-9][0-9][0-9][0-9]99`
      - `[0-9][0-9][0-9][0-9]-[0-9][0-9]-99`
      - `[0-9][0-9][0-9][0-9]W[0-9][0-9]9`
      - `[0-9][0-9][0-9][0-9]-W[0-9][0-9]-9`

    (for `<YEAR>[-]<MONTH>[-]99` and `<YEAR>[-]W<WEEK>[-]9`).
  * `fake-hourly`\
    Matches hourly, minutely and secondly backup directories
    if the hour is 99.
    This corresponds the following patterns:
      - `[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]T99*`
      - `[0-9][0-9][0-9][0-9]-[0-9][0-9]-[0-9][0-9]T99*`
      - `[0-9][0-9][0-9][0-9]W[0-9][0-9][0-9]T99*`
      - `[0-9][0-9][0-9][0-9]-W[0-9][0-9]-[0-9]T99*`

    (for
    `<YEAR>[-]<MONTH>[-]<DAY>T99[[:]<MINUTE>[[:]<SECOND>]]` and
    `<YEAR>[-]W<WEEK>[-]<DAY>T99[[:]<MINUTE>[[:]<SECOND>]]`).

The conf/rsh file
-----------------
[conf/rsh]: #the-confrsh-file

An optional script to be used as a remote shell instead of the plain
**ssh**(1). This script can be used for setting identity files and proxy
commands, for instance.

The conf/rsync-config file
--------------------------
[conf/rsync-config]: #the-confrsync-config-file

An optional configuration file used by **[backup-rsync]**\(1\) used by
**[backup-copy-rsync]**\(1\) and **[backup-create-rsync]**\(1\) used by **[backup-copy]**\(1\)
and **[backup-create]**\(1\) used by **[backup-mirror-sources]**\(1\) and
**[backup-sources]**\(1\) used by **[backup]**\(1\) and **[backup-mirror]**\(1\) containing long
option names (without leading slashes) and optional option arguments to
be passed to **rsync**(1).

The conf/tag-formats file
-------------------------
[conf/tag-formats]: #the-conftag-formats-file

An optional configuration file used by **[backup-create]**\(1\) used by
**[backup-sources]**\(1\) used by **[backup]**\(1\) containing date formats to be used
when constructing a backup directory name for a new backup. Empty lines
and comment lines (starting with a "#") are allowed, too. Each date
format is tried in turn in order specified until a non-existing backup
directory is found.

Copyright
---------

Copyright (C) 2010 - 2021 Eero Häkkinen <Eero+rsync-backup@Häkkinen.fi>

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License version 3
as published by the Free Software Foundation.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program.  If not, see <http://www.gnu.org/licenses/>.

[backup]: ../tools/README.md#backup
[backup-copy]: ../tools/README.md#backup-copy
[backup-copy-rsync]: ../tools/README.md#backup-copy-rsync
[backup-create]: ../tools/README.md#backup-create
[backup-create-rsync]: ../tools/README.md#backup-create-rsync
[backup-mirror]: ../tools/README.md#backup-mirror
[backup-mirror-sources]: ../tools/README.md#backup-mirror-sources
[backup-nice]: ../tools/README.md#backup-nice
[backup-nologin]: ../tools/README.md#backup-nologin
[backup-prepare]: ../tools/README.md#backup-prepare
[backup-purge]: ../tools/README.md#backup-purge
[backup-rsync]: ../tools/README.md#backup-rsync
[backup-sources]: ../tools/README.md#backup-sources
