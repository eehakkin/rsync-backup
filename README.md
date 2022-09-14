rsync-backup
============

Versatile **rsync**(1) based backup scripts with minimal dependencies.

The newly created backup directories are named according to the backup
date and time and are full backup directories containing direct (but
possible filtered) copies of original files and directories. They can
thus be accessed and restored directly.

Old backup directories are deleted based on pattern matching and ages.
The default is to keep secondly, minutely and hourly backup directories
for at most one day covering hours since the last daily backup, daily
backup directories for at least one week covering days since the last
weekly backup, weekly backup directories for at least one month covering
weeks since the last monthly backup, monthly backup directories for at
least one year covering months since the last yearly backup and yearly
backup directories forever.

Disk usage is minimised and transfers are speeded up by hard linking
files from old backup directories to newly created backup directories.

Requirements
------------

Minimum requirements:
 - Essential POSIX-compiliant utilities
   **[**(1),
   **basename**(1),
   **cat**(1),
   **chgrp**(1),
   **chmod**(1),
   **cp**(1),
   **dirname**(1),
   **echo**(1),
   **find**(1),
   **grep**(1),
   **id**(1),
   **ln**(1),
   **ls**(1),
   **mkdir**(1),
   **mv**(1),
   **printf**(1),
   **rm**(1),
   **rmdir**(1),
   **sh**(1),
   **sync**(1) and
   **uname**(1)
 - **rsync**(1):        To copy files.

Optional requirements:
 - **duperemove**(1):   To deduplicate file extends.
 - **hostname**(1):     To get the system's hostname.
 - **ionice**(1):       To set idle I/O priority.
 - **jdupes**(1):       To deduplicate file extends.
 - **nice**(1):         To add niceness.
 - **nocache**(1):      To minimize the effect on file system cache.
 - **on_ac_power**(1):  To test whether computer is running on AC power.
 - **renice**(1):       To readd niceness.
 - **ssh**(1):          To copy files from another host.
 - **fmt**(1),
   **help2man**(1),
   **man**(1),
   **tput**(1):         To format help messages.

Installation
------------

 1. Download and extract files.
     - Choose one method:
        1. Clone the repository with **git**(1):
           ```sh
           git clone https://github.com/eehakkin/rsync-backup.git
           ```
        2. Download
           a [tarball](https://github.com/eehakkin/rsync-backup/tarball/main)
           and extract files from it with **tar**(1) or with some other
           archiving tool.
        3. Download
           a [zipball](https://github.com/eehakkin/rsync-backup/zipball/main)
           and extract files from it with **unzip**(1) or with some other
           archiving tool.
     - Optionally, rename the directory.

Usage
-----

 1. Change the working directory:
    ```sh
    cd -- rsync-backup
    ```
    Adapt accordingly if the directory is named differently.
 2. Create proper configuration (at minimum the **[conf/backup-src-list]**
    file):
     - As a starting point, copy a sample backup source list:
       ```sh
       cp -v -- conf/examples/backup-src-list conf/
       ```
     - Optionally, edit the **conf/backup-src-list** file with any text
       editor.
     - Optionally, add more configuration files.
       For details, see documentation in the **[conf/]** directory.
 3. Create the first backup:
    ```sh
    tools/backup
    ```
    By default, the first run will create a yearly backup directory
    (which is named according to the year). and the next runs will
    create monthly, weekly, daily, hourly, minutely and secondly backup
    directories until the next minute, hour, day, week, month or year.
    For details, see documentation in the **[tools/]** directory.
 4. Repeat the last step often enough such as daily, bihourly or hourly.
    That can be automated with systemd timer units, crontabs or such.

Directory structure
-------------------

 - **[conf/]**
     A backup configuration directory.
   - ...
   - **[backup-src-list](conf/README.md#the-confbackup-src-list-file)**
   - ...
 - **latest**
     A symbolic link to the latest backup directory.
 - **tmp/**
     A temporary directory.
 - **[tools/]**
     A backup tool directory.
   - **[backup]**:                create a new backup directory and do related tasks
   - **[backup-clean-tmp]**:      clean up a temporary directory
   - **[backup-copy]**:           copy backup directories
   - **[backup-copy-rsync]**:     a backup copying oriented file-copying tool
   - **[backup-create]**:         create a new backup directory
   - **[backup-create-rsync]**:   a backup creation oriented file-copying tool
   - **[backup-du]**:             estimate file space usage
   - **[backup-help]**:           show backup tool help messages
   - **[backup-make-tag]**:       construct a new backup directory name
   - **[backup-mirror]**:         copy backup directories and do related tasks
   - **[backup-mirror-sources]**: copy backup directories from mirror sources
   - **[backup-nice]**:           run a backup command nicely
   - **[backup-nologin]**:        politely refuse a login but allow a backup
   - **[backup-prepare]**:        prepare for backups
   - **[backup-purge]**:          delete old backup directories
   - **[backup-rsync]**:          a backup-oriented file-copying tool
   - **[backup-sources]**:        create a new backup directory from backup sources
 - \<YEAR\>/
     A yearly backup directory.
 - \<YEAR\>[**-**]\<MONTH\>/
     A monthly backup directory.
 - \<YEAR\>[**-**]**W**\<WEEK\>/
     A weekly backup directory.
 - \<YEAR\>[**-**]\<MONTH\>[**-**]\<DAY\>/
     A daily backup directory.
 - \<YEAR\>[**-**]\<MONTH\>[**-**]\<DAY\>**T**\<HOUR\>/
     An hourly backup directory.
 - \<YEAR\>[**-**]\<MONTH\>[**-**]\<DAY\>**T**\<HOUR\>[**:**]\<MINUTE\>/
     A minutely backup directory.
 - \<YEAR\>[**-**]\<MONTH\>[**-**]\<DAY\>**T**\<HOUR\>[**:**]\<MINUTE\>[**:**]\<SECOND\>/
     A secondly backup directory.
 - \<YEAR\>[**-**]**W**\<WEEK\>[**-**]\<DAY\>/
     An alternative daily backup directory.
 - \<YEAR\>[**-**]**W**\<WEEK\>[**-**]\<DAY\>**T**\<HOUR\>/
     An alternative hourly backup directory.
 - \<YEAR\>[**-**]**W**\<WEEK\>[**-**]\<DAY\>**T**\<HOUR\>[**:**]\<MINUTE\>/
     An alternative minutely backup directory.
 - \<YEAR\>[**-**]**W**\<WEEK\>[**-**]\<DAY\>**T**\<HOUR\>[**:**]\<MINUTE\>[**:**]\<SECOND\>/
     An alternative secondly backup directory.

[conf/]: conf/
[conf/backup-src-list]: conf/README.md#the-confbackup-src-list-file
[conf/mirror-src-list]: conf/README.md#the-confmirror-src-list-file
[tools/]: tools/
[backup]: tools/README.md#backup
[backup-clean-tmp]: tools/README.md#backup-clean-tmp
[backup-copy]: tools/README.md#backup-copy
[backup-copy-rsync]: tools/README.md#backup-copy-rsync
[backup-create]: tools/README.md#backup-create
[backup-create-rsync]: tools/README.md#backup-create-rsync
[backup-du]: tools/README.md#backup-du
[backup-help]: tools/README.md#backup-help
[backup-make-tag]: tools/README.md#backup-make-tag
[backup-mirror]: tools/README.md#backup-mirror
[backup-mirror-sources]: tools/README.md#backup-mirror-sources
[backup-nice]: tools/README.md#backup-nice
[backup-nologin]: tools/README.md#backup-nologin
[backup-prepare]: tools/README.md#backup-prepare
[backup-purge]: tools/README.md#backup-purge
[backup-rsync]: tools/README.md#backup-rsync
[backup-sources]: tools/README.md#backup-sources

Backup configuration
--------------------

See documentation in the **[conf/]** directory.

Backup tools
------------

See documentation in the **[tools/]** directory.

Backup scheduling
-----------------

The backup scripts must be run often enough. That can be automated with
systemd timer units, crontabs or such.

If proper configuration exists in the **[conf/]** directory (at minimum
the **[conf/backup-src-list]** file), it is enough to run
`/path/to/tools/backup` (see **[backup]**\(1\) for details) often enough
such as daily, bihourly, or hourly.

If proper configuration does not exist, one has to create one (see the
documentation in the **[conf/]** directory for details) or one has to
run `/path/to/tools/backup-create [<RSYNC-OPTION>]... <SRC>..` and
`/path/to/tools/backup-purge [<PATTERN>=<DAYS>]...` (see
**[backup-create]**\(1\) and **[backup-purge]**\(1\) for details).

Backup mirror scheduling
------------------------

If proper configuration exists in the **[conf/]** directory (at minimum
the **[conf/mirror-src-list]** file), it is enough to run
`/path/to/tools/backup-mirror` (see **[backup-mirror]**\(1\) for
details) often enough such as weekly or daily.

If proper configuration does not exist, one has to create one (see the
documentation in the **[conf/]** directory for details) or one has to
run `/path/to/tools/backup-copy [<RSYNC-OPTION>]... <SRC>..` and
`/path/to/tools/backup-purge [<PATTERN>=<DAYS>]...` (see
**[backup-copy]**\(1\) and **[backup-purge]**\(1\) for details).

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
