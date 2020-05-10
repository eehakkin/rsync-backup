rsync-backup
============

rsync(1) based backup scripts.

Commands
--------

 * **backup**:                create a new backup directory and do related tasks
 * **backup-copy**:           copy backup directories
 * **backup-create**:         create a new backup directory
 * **backup-mirror**:         copy backup directories and do related tasks
 * **backup-mirror-sources**: copy backup directories from mirror sources
 * **backup-nice**:           run a backup command nicely
 * **backup-nologin**:        politely refuse a login but allow a backup
 * **backup-prepare**:        prepare for backups
 * **backup-purge**:          delete old backup directories
 * **backup-rsync**:          a backup-oriented file-copying tool
 * **backup-sources**:        create a new backup directory from backup sources

### **backup**

Prepare for backups by executing preparation scripts, read backup
sources from configuration files, create a new backup directory from the
backup sources using rsync(1) and then delete old backup directories
based on pattern matching and ages.

### **backup-copy**

Copy backup directories from sources using rsync(1).

Disk usage is minimised and the transfer is speeded up by hard linking
files from old backup directories to newly created backup directories
whenever possible (when files in sources and previous backup directories
are identical in content and in all preserved attributes).

On the btrfs and s3ql filesystems, hard linking is not needed and is
therefore not used for disk usage minimisation.

### **backup-create**

Create a new backup directory using rsync(1).

The newly created backup directory is named according to the backup date
and time and is a full backup directories containing direct (but
possible filtered) copies of original files and directories. It can thus
be accessed and restored directly.

Disk usage is minimised and the transfer is speeded up by hard linking
files from old backup directories to newly created backup directories
whenever possible (when files in sources and previous backup directories
are identical in content and in all preserved attributes).

On the btrfs and s3ql filesystems, hard linking is not needed and is
therefore not used for disk usage minimisation.

### **backup-mirror**

Read mirror sources from configuration files, copy backup directories
from the mirror sources using rsync(1) and then delete old backup
directories based on pattern matching and ages.

### **backup-mirror-sources**

Read mirror sources from configuration files and copy backup directories
from the mirror sources using rsync(1).

### **backup-nice**

Run a backup command with idle I/O priority (whose impact on normal
system activity should be zero), with an adjusted niceness (which affect
process scheduling) and with minimized effect on file system cache.

### **backup-nologin**

Politely refuse a login but allow backup-rsync to be executed via a
remote shell.

### **backup-prepare**

Prepare for backups by executing preparation scripts.

This can be used for dumping database snapshots to files, for instance.

### **backup-purge**

Delete old backup directories based on pattern matching and ages.

The default is to keep hourly backups for at most one day, daily backups
for at least one week, weekly backups for at least one month, monthly
backups for at least one year and yearly backups forever.

### **backup-rsync**

Copy files using rsync(1).

### **backup-sources**

Read backup sources from configuration files and create a new backup
directory from the backup sources using rsync(1).
