rsync-backup
============

rsync(1) based backup scripts.

Commands
--------

 * **backup**:             create backups and do related tasks
 * **backup-copy**:        copy backups
 * **backup-create**:      create backups
 * **backup-mirror**:      mirror backups and do related tasks
 * **backup-nice**:        run a backup command nicely
 * **backup-nologin**:     politely refuse a login but allow a backup
 * **backup-prepare**:     prepare for backups
 * **backup-purge**:       delete old backup directories
 * **backup-rsync**:       a backup-oriented file-copying tool

### **backup**

Prepare for backups, create backups and then delete old backup
directories.

### **backup-copy**

Copy backups from master locations using rsync(1).

Disk usage is minimised and the transfer is speeded up by hard linking
files from old backup directories to newly created backup directories
whenever possible (when files in sources and previous backup directories
are identical in content and in all preserved attributes).

On the btrfs and s3ql filesystems, hard linking is not needed and is
therefore not used for disk usage minimisation.

### **backup-create**

Create backups using rsync(1).

Each new backup is created into a new backup directory which is named
according to the backup date and time. These backup directories are full
backup directories containing direct (but possible filtered) copies of
original files and directories. They can thus be accessed and restored
directly.

Disk usage is minimised and the transfer is speeded up by hard linking
files from old backup directories to newly created backup directories
whenever possible (when files in sources and previous backup directories
are identical in content and in all preserved attributes).

On the btrfs and s3ql filesystems, hard linking is not needed and is
therefore not used for disk usage minimisation.

### **backup-mirror**

Copy backups and then delete old backup directories.

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

Delete old backup directories based on pattern matching and age.

The default is to keep hourly backups over one day, daily backups over
one week, weekly backups over one month, monthly backups over one year
and yearly backups forever.

### **backup-rsync**

Copy files using rsync(1).
