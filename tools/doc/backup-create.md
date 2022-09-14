<link href="groff-md.css" rel="stylesheet" type="text/css" />
<h1>BACKUP-CREATE</h1>
<hr/>
<h2>NAME
</h2>
<p style="margin-left:11%; margin-top: 1em">backup-create -
create a new backup directory</p>
<h2>SYNOPSIS
</h2>
<table width="100%" border="0" rules="none" frame="void"
       cellspacing="0" cellpadding="0">
<colgroup><col width="11%"/>
<col width="20%"/>
<col width="1%" class="center"/>
<col width="68%"/>
</colgroup>
<tr valign="top" align="left">
<td></td>
<td>
<p style="margin-top: 1em"><b>backup-create</b></p></td>
<td></td>
<td>
<p style="margin-top: 1em">[<i>&lt;RSYNC-OPTION&gt;</i>]...
<i>&lt;SRC&gt;</i>...</p> </td></tr>
<tr valign="top" align="left">
<td></td>
<td>
<p><b>backup-create</b></p></td>
<td></td>
<td>
<p>[<i>&lt;RSYNC-OPTION&gt;</i>]...
<i>&lt;BASE-DIR&gt;/./</i>[<i>&lt;SRC&gt;</i>]...</p> </td></tr>
<tr valign="top" align="left">
<td></td>
<td>
<p><b>backup-create</b></p></td>
<td></td>
<td>
<p>[<i>&lt;RSYNC-OPTION&gt;</i>]...
[<i>&lt;USER&gt;@</i>]<i>&lt;HOST&gt;:&lt;SRC&gt;</i>...</p> </td></tr>
<tr valign="top" align="left">
<td></td>
<td>
<p><b>backup-create</b></p></td>
<td></td>
<td>
<p>[<i>&lt;RSYNC-OPTION&gt;</i>]...
[<i>&lt;USER&gt;@</i>]<i>&lt;HOST&gt;:&lt;BASE-DIR&gt;/./</i>[<i>&lt;SRC&gt;</i>]...</p> </td></tr>
<tr valign="top" align="left">
<td></td>
<td>
<p><b>backup-create</b></p></td>
<td></td>
<td>
<p>[<i>&lt;RSYNC-OPTION&gt;</i>]...
[<i>&lt;USER&gt;@</i>]<i>&lt;HOST&gt;::&lt;MODULE&gt;</i>[<i>/</i>[<i>&lt;SRC&gt;</i>]]...</p> </td></tr>
<tr valign="top" align="left">
<td></td>
<td>
<p><b>backup-create</b></p></td>
<td></td>
<td>
<p>[<i>&lt;RSYNC-OPTION&gt;</i>]...
[<i>&lt;USER&gt;@</i>]<i>&lt;HOST&gt;::&lt;MODULE&gt;/&lt;BASE-DIR&gt;/./</i>[<i>&lt;SRC&gt;</i>]...</p> </td></tr>
<tr valign="top" align="left">
<td></td>
<td>
<p><b>backup-create</b></p></td>
<td></td>
<td>
<p>[<i>&lt;RSYNC-OPTION&gt;</i>]...
<i>rsync://</i>[<i>&lt;USER&gt;@</i>]<i>&lt;HOST&gt;</i>[<i>:&lt;PORT&gt;</i>]<i>/&lt;MODULE&gt;</i>[<i>/</i>[<i>&lt;SRC&gt;</i>]]...</p> </td></tr>
<tr valign="top" align="left">
<td></td>
<td>
<p><b>backup-create</b></p></td>
<td></td>
<td>
<p>[<i>&lt;RSYNC-OPTION&gt;</i>]...
<i>rsync://</i>[<i>&lt;USER&gt;@</i>]<i>&lt;HOST&gt;</i>[<i>:&lt;PORT&gt;</i>]<i>/&lt;MODULE&gt;/&lt;BASE-DIR&gt;/./</i>[<i>&lt;SRC&gt;</i>]...</p> </td></tr>
<tr valign="top" align="left">
<td></td>
<td>
<p><b>backup-create</b></p></td>
<td></td>
<td>
<p><i>&lt;OPTION&gt;</i>...</p></td></tr>
</table>
<h2>DESCRIPTION
</h2>
<p style="margin-left:11%; margin-top: 1em">Create a new
backup directory using <b><a href="backup-create-rsync.html">backup-create-rsync</a></b>(1) and
thus <b>rsync</b>(1).</p>
<p style="margin-left:11%; margin-top: 1em">The newly
created backup directory is named according to the backup
date and time and is a full backup directory containing
direct (but possible filtered) copies of original files and
directories. It can thus be accessed and restored
directly.</p>
<p style="margin-left:11%; margin-top: 1em">A new backup
directory is created using the following steps:</p>
<p style="margin-left:22%; margin-top: 1em">An empty backup
directory is created in a temporary directory.</p>
<p style="margin-left:22%; margin-top: 1em">Files and
directories are copied from sources to the newly created
backup directory using <b><a href="backup-create-rsync.html">backup-create-rsync</a></b>(1) and
thus <b>rsync</b>(1).</p>
<p style="margin-left:22%; margin-top: 1em">A new symbolink
link to denote the latest backup directory is created in a
temporary directory.</p>
<p style="margin-left:22%; margin-top: 1em">The newly
created backup directory and the newly created symbolink
link are moved to the final location.</p>
<p style="margin-left:11%; margin-top: 1em">Disk usage is
minimised and the transfer is speeded up by hard linking
files from old backup directories to the newly created
backup directory whenever possible (when files in sources
and previous backup directories are identical in content and
in all preserved attributes) and by sharing physical storage
between files (reflinking) on supported filesystems (btrfs,
s3ql and xfs).</p>
<h2>OPTIONS
</h2>
<p style="margin-left:11%; margin-top: 1em"><b>-h</b>,
<b>--help[=</b>&lt;FORMAT&gt;]</p>
<p style="margin-left:22%;">Show this help message and
exit.</p>
<p style="margin-left:11%;"><b>-V</b>, <b>--version</b></p>
<p style="margin-left:22%;">Show version information and
exit.</p>
<p style="margin-left:11%; margin-top: 1em"><b>Rsync
options: <br/>
--verbose</b>, <b>-v</b></p>
<p style="margin-left:22%;">increase verbosity</p>
<p style="margin-left:11%;"><b>--info</b>=<i>FLAGS</i></p>
<p style="margin-left:22%;">fine-grained informational
verbosity</p>
<p style="margin-left:11%;"><b>--debug</b>=<i>FLAGS</i></p>
<p style="margin-left:22%;">fine-grained debug
verbosity</p>
<p style="margin-left:11%;"><b>--stderr</b>=<i>e</i>|a|c</p>
<p style="margin-left:22%;">change stderr output mode
(default: errors)</p>
<p style="margin-left:11%;"><b>--quiet</b>, <b>-q</b></p>
<p style="margin-left:22%;">suppress non-error messages</p>
<p style="margin-left:11%;"><b>--no-motd</b></p>
<p style="margin-left:22%;">suppress daemon-mode MOTD</p>
<p style="margin-left:11%;"><b>--checksum</b>,
<b>-c</b></p>
<p style="margin-left:22%;">skip based on checksum, not
mod-time &amp; size</p>
<p style="margin-left:11%;"><b>--archive</b>, <b>-a</b></p>
<p style="margin-left:22%;">archive mode is <b>-rlptgoD</b>
(no <b>-A</b>, <b>-X</b>, <b>-U</b>, <b>-N</b>,
<b>-H</b>)</p>
<p style="margin-left:11%;"><b>--no-OPTION</b></p>
<p style="margin-left:22%;">turn off an implied OPTION
(e.g. <b>--no-D</b>)</p>
<p style="margin-left:11%;"><b>--recursive</b>,
<b>-r</b></p>
<p style="margin-left:22%;">recurse into directories</p>
<p style="margin-left:11%;"><b>--relative</b>,
<b>-R</b></p>
<p style="margin-left:22%;">use relative path names</p>
<p style="margin-left:11%;"><b>--no-implied-dirs</b></p>
<p style="margin-left:22%;">don&rsquo;t send implied dirs
with <b>--relative</b></p>
<p style="margin-left:11%;"><b>--backup</b>, <b>-b</b></p>
<p style="margin-left:22%;">make backups (see
<b>--suffix</b> &amp; <b>--backup-dir</b>)</p>
<p style="margin-left:11%;"><b>--backup-dir</b>=<i>DIR</i></p>
<p style="margin-left:22%;">make backups into hierarchy
based in DIR</p>
<p style="margin-left:11%;"><b>--suffix</b>=<i>SUFFIX</i></p>
<p style="margin-left:22%;">backup suffix (default ~ w/o
<b>--backup-dir</b>)</p>
<p style="margin-left:11%;"><b>--update</b>, <b>-u</b></p>
<p style="margin-left:22%;">skip files that are newer on
the receiver</p>
<p style="margin-left:11%;"><b>--inplace</b></p>
<p style="margin-left:22%;">update destination files
in-place</p>
<p style="margin-left:11%;"><b>--append</b></p>
<p style="margin-left:22%;">append data onto shorter
files</p>
<p style="margin-left:11%;"><b>--append-verify</b></p>
<p style="margin-left:22%;">&#8203;--append w/old data in
file checksum</p>
<p style="margin-left:11%;"><b>--dirs</b>, <b>-d</b></p>
<p style="margin-left:22%;">transfer directories without
recursing</p>
<p style="margin-left:11%;"><b>--old-dirs</b>,
<b>--old-d</b></p>
<p style="margin-left:22%;">works like <b>--dirs</b> when
talking to old rsync</p>
<p style="margin-left:11%;"><b>--mkpath</b></p>
<p style="margin-left:22%;">create destination&rsquo;s
missing path components</p>
<p style="margin-left:11%;"><b>--links</b>, <b>-l</b></p>
<p style="margin-left:22%;">copy symlinks as symlinks</p>
<p style="margin-left:11%;"><b>--copy-links</b>,
<b>-L</b></p>
<p style="margin-left:22%;">transform symlink into referent
file/dir</p>
<p style="margin-left:11%;"><b>--copy-unsafe-links</b></p>
<p style="margin-left:22%;">only &quot;unsafe&quot;
symlinks are transformed</p>
<p style="margin-left:11%;"><b>--safe-links</b></p>
<p style="margin-left:22%;">ignore symlinks that point
outside the tree</p>
<p style="margin-left:11%;"><b>--munge-links</b></p>
<p style="margin-left:22%;">munge symlinks to make them
safe &amp; unusable</p>
<p style="margin-left:11%;"><b>--copy-dirlinks</b>,
<b>-k</b></p>
<p style="margin-left:22%;">transform symlink to dir into
referent dir</p>
<p style="margin-left:11%;"><b>--keep-dirlinks</b>,
<b>-K</b></p>
<p style="margin-left:22%;">treat symlinked dir on receiver
as dir</p>
<p style="margin-left:11%;"><b>--hard-links</b>,
<b>-H</b></p>
<p style="margin-left:22%;">preserve hard links</p>
<p style="margin-left:11%;"><b>--perms</b>, <b>-p</b></p>
<p style="margin-left:22%;">preserve permissions</p>
<p style="margin-left:11%;"><b>--executability</b>,
<b>-E</b></p>
<p style="margin-left:22%;">preserve executability</p>
<p style="margin-left:11%;"><b>--chmod</b>=<i>CHMOD</i></p>
<p style="margin-left:22%;">affect file and/or directory
permissions</p>
<p style="margin-left:11%;"><b>--acls</b>, <b>-A</b></p>
<p style="margin-left:22%;">preserve ACLs (implies
<b>--perms</b>)</p>
<p style="margin-left:11%;"><b>--xattrs</b>, <b>-X</b></p>
<p style="margin-left:22%;">preserve extended
attributes</p>
<p style="margin-left:11%;"><b>--owner</b>, <b>-o</b></p>
<p style="margin-left:22%;">preserve owner (super-user
only)</p>
<p style="margin-left:11%;"><b>--group</b>, <b>-g</b></p>
<p style="margin-left:22%;">preserve group</p>
<p style="margin-left:11%;"><b>--devices</b></p>
<p style="margin-left:22%;">preserve device files
(super-user only)</p>
<p style="margin-left:11%;"><b>--copy-devices</b></p>
<p style="margin-left:22%;">copy device contents as a
regular file</p>
<p style="margin-left:11%;"><b>--write-devices</b></p>
<p style="margin-left:22%;">write to devices as files
(implies <b>--inplace</b>)</p>
<p style="margin-left:11%;"><b>--specials</b></p>
<p style="margin-left:22%;">preserve special files</p>
<table width="100%" border="0" rules="none" frame="void"
       cellspacing="0" cellpadding="0">
<colgroup><col width="11%"/>
<col width="3%"/>
<col width="8%" class="center"/>
<col width="43%"/>
<col width="35%"/>
</colgroup>
<tr valign="top" align="left">
<td></td>
<td>
<p><b>-D</b></p></td>
<td></td>
<td>
<p>same as <b>--devices --specials</b></p></td>
<td>
</td></tr>
</table>
<p style="margin-left:11%;"><b>--times</b>, <b>-t</b></p>
<p style="margin-left:22%;">preserve modification times</p>
<p style="margin-left:11%;"><b>--atimes</b>, <b>-U</b></p>
<p style="margin-left:22%;">preserve access (use) times</p>
<p style="margin-left:11%;"><b>--open-noatime</b></p>
<p style="margin-left:22%;">avoid changing the atime on
opened files</p>
<p style="margin-left:11%;"><b>--crtimes</b>, <b>-N</b></p>
<p style="margin-left:22%;">preserve create times
(newness)</p>
<p style="margin-left:11%;"><b>--omit-dir-times</b>,
<b>-O</b></p>
<p style="margin-left:22%;">omit directories from
<b>--times</b></p>
<p style="margin-left:11%;"><b>--omit-link-times</b>,
<b>-J</b></p>
<p style="margin-left:22%;">omit symlinks from
<b>--times</b></p>
<p style="margin-left:11%;"><b>--super</b></p>
<p style="margin-left:22%;">receiver attempts super-user
activities</p>
<p style="margin-left:11%;"><b>--fake-super</b></p>
<p style="margin-left:22%;">store/recover privileged attrs
using xattrs</p>
<p style="margin-left:11%;"><b>--sparse</b>, <b>-S</b></p>
<p style="margin-left:22%;">turn sequences of nulls into
sparse blocks</p>
<p style="margin-left:11%;"><b>--preallocate</b></p>
<p style="margin-left:22%;">allocate dest files before
writing them</p>
<p style="margin-left:11%;"><b>--dry-run</b>, <b>-n</b></p>
<p style="margin-left:22%;">perform a trial run with no
changes made</p>
<p style="margin-left:11%;"><b>--whole-file</b>,
<b>-W</b></p>
<p style="margin-left:22%;">copy files whole (w/o
delta-xfer algorithm)</p>
<p style="margin-left:11%;"><b>--checksum-choice</b>=<i>STR</i></p>
<p style="margin-left:22%;">choose the checksum algorithm
(aka <b>--cc</b>)</p>
<p style="margin-left:11%;"><b>--one-file-system</b>,
<b>-x</b></p>
<p style="margin-left:22%;">don&rsquo;t cross filesystem
boundaries</p>
<p style="margin-left:11%;"><b>--block-size</b>=<i>SIZE</i>,
<b>-B</b></p>
<p style="margin-left:22%;">force a fixed checksum
block-size</p>
<p style="margin-left:11%;"><b>--rsh</b>=<i>COMMAND</i>,
<b>-e</b></p>
<p style="margin-left:22%;">specify the remote shell to
use</p>
<p style="margin-left:11%;"><b>--rsync-path</b>=<i>PROGRAM</i></p>
<p style="margin-left:22%;">specify the rsync to run on
remote machine</p>
<p style="margin-left:11%;"><b>--existing</b></p>
<p style="margin-left:22%;">skip creating new files on
receiver</p>
<p style="margin-left:11%;"><b>--ignore-existing</b></p>
<p style="margin-left:22%;">skip updating files that exist
on receiver</p>
<p style="margin-left:11%;"><b>--remove-source-files</b></p>
<p style="margin-left:22%;">sender removes synchronized
files (non-dir)</p>
<table width="100%" border="0" rules="none" frame="void"
       cellspacing="0" cellpadding="0">
<colgroup><col width="11%"/>
<col width="7%"/>
<col width="4%" class="center"/>
<col width="43%"/>
<col width="35%"/>
</colgroup>
<tr valign="top" align="left">
<td></td>
<td>
<p><b>--del</b></p></td>
<td></td>
<td>
<p>an alias for <b>--delete-during</b></p></td>
<td>
</td></tr>
</table>
<p style="margin-left:11%;"><b>--delete</b></p>
<p style="margin-left:22%;">delete extraneous files from
dest dirs</p>
<p style="margin-left:11%;"><b>--delete-before</b></p>
<p style="margin-left:22%;">receiver deletes before xfer,
not during</p>
<p style="margin-left:11%;"><b>--delete-during</b></p>
<p style="margin-left:22%;">receiver deletes during the
transfer</p>
<p style="margin-left:11%;"><b>--delete-delay</b></p>
<p style="margin-left:22%;">find deletions during, delete
after</p>
<p style="margin-left:11%;"><b>--delete-after</b></p>
<p style="margin-left:22%;">receiver deletes after
transfer, not during</p>
<p style="margin-left:11%;"><b>--delete-excluded</b></p>
<p style="margin-left:22%;">also delete excluded files from
dest dirs</p>
<p style="margin-left:11%;"><b>--ignore-missing-args</b></p>
<p style="margin-left:22%;">ignore missing source args
without error</p>
<p style="margin-left:11%;"><b>--delete-missing-args</b></p>
<p style="margin-left:22%;">delete missing source args from
destination</p>
<p style="margin-left:11%;"><b>--ignore-errors</b></p>
<p style="margin-left:22%;">delete even if there are I/O
errors</p>
<p style="margin-left:11%;"><b>--force</b></p>
<p style="margin-left:22%;">force deletion of dirs even if
not empty</p>
<p style="margin-left:11%;"><b>--max-delete</b>=<i>NUM</i></p>
<p style="margin-left:22%;">don&rsquo;t delete more than
NUM files</p>
<p style="margin-left:11%;"><b>--max-size</b>=<i>SIZE</i></p>
<p style="margin-left:22%;">don&rsquo;t transfer any file
larger than SIZE</p>
<p style="margin-left:11%;"><b>--min-size</b>=<i>SIZE</i></p>
<p style="margin-left:22%;">don&rsquo;t transfer any file
smaller than SIZE</p>
<p style="margin-left:11%;"><b>--max-alloc</b>=<i>SIZE</i></p>
<p style="margin-left:22%;">change a limit relating to
memory alloc</p>
<p style="margin-left:11%;"><b>--partial</b></p>
<p style="margin-left:22%;">keep partially transferred
files</p>
<p style="margin-left:11%;"><b>--partial-dir</b>=<i>DIR</i></p>
<p style="margin-left:22%;">put a partially transferred
file into DIR</p>
<p style="margin-left:11%;"><b>--delay-updates</b></p>
<p style="margin-left:22%;">put all updated files into
place at end</p>
<p style="margin-left:11%;"><b>--prune-empty-dirs</b>,
<b>-m</b></p>
<p style="margin-left:22%;">prune empty directory chains
from file-list</p>
<p style="margin-left:11%;"><b>--numeric-ids</b></p>
<p style="margin-left:22%;">don&rsquo;t map uid/gid values
by user/group name</p>
<p style="margin-left:11%;"><b>--usermap</b>=<i>STRING</i></p>
<p style="margin-left:22%;">custom username mapping</p>
<p style="margin-left:11%;"><b>--groupmap</b>=<i>STRING</i></p>
<p style="margin-left:22%;">custom groupname mapping</p>
<p style="margin-left:11%;"><b>--chown</b>=<i>USER</i>:GROUP</p>
<p style="margin-left:22%;">simple username/groupname
mapping</p>
<p style="margin-left:11%;"><b>--timeout</b>=<i>SECONDS</i></p>
<p style="margin-left:22%;">set I/O timeout in seconds</p>
<p style="margin-left:11%;"><b>--contimeout</b>=<i>SECONDS</i></p>
<p style="margin-left:22%;">set daemon connection timeout
in seconds</p>
<p style="margin-left:11%;"><b>--ignore-times</b>,
<b>-I</b></p>
<p style="margin-left:22%;">don&rsquo;t skip files that
match size and time</p>
<p style="margin-left:11%;"><b>--size-only</b></p>
<p style="margin-left:22%;">skip files that match in
size</p>
<p style="margin-left:11%;"><b>--modify-window</b>=<i>NUM</i>,
-@</p>
<p style="margin-left:22%;">set the accuracy for mod-time
comparisons</p>
<p style="margin-left:11%;"><b>--temp-dir</b>=<i>DIR</i>,
<b>-T</b></p>
<p style="margin-left:22%;">create temporary files in
directory DIR</p>
<p style="margin-left:11%;"><b>--fuzzy</b>, <b>-y</b></p>
<p style="margin-left:22%;">find similar file for basis if
no dest file</p>
<p style="margin-left:11%;"><b>--compare-dest</b>=<i>DIR</i></p>
<p style="margin-left:22%;">also compare destination files
relative to DIR</p>
<p style="margin-left:11%;"><b>--copy-dest</b>=<i>DIR</i></p>
<p style="margin-left:22%;">... and include copies of
unchanged files</p>
<p style="margin-left:11%;"><b>--link-dest</b>=<i>DIR</i></p>
<p style="margin-left:22%;">hardlink to files in DIR when
unchanged</p>
<p style="margin-left:11%;"><b>--compress</b>,
<b>-z</b></p>
<p style="margin-left:22%;">compress file data during the
transfer</p>
<p style="margin-left:11%;"><b>--compress-choice</b>=<i>STR</i></p>
<p style="margin-left:22%;">choose the compression
algorithm (aka <b>--zc</b>)</p>
<p style="margin-left:11%;"><b>--compress-level</b>=<i>NUM</i></p>
<p style="margin-left:22%;">explicitly set compression
level (aka <b>--zl</b>)</p>
<p style="margin-left:11%;"><b>--skip-compress</b>=<i>LIST</i></p>
<p style="margin-left:22%;">skip compressing files with
suffix in LIST</p>
<p style="margin-left:11%;"><b>--cvs-exclude</b>,
<b>-C</b></p>
<p style="margin-left:22%;">auto-ignore files in the same
way CVS does</p>
<p style="margin-left:11%;"><b>--filter</b>=<i>RULE</i>,
<b>-f</b></p>
<p style="margin-left:22%;">add a file-filtering RULE</p>
<table width="100%" border="0" rules="none" frame="void"
       cellspacing="0" cellpadding="0">
<colgroup><col width="11%"/>
<col width="3%"/>
<col width="8%" class="center"/>
<col width="78%"/>
</colgroup>
<tr valign="top" align="left">
<td></td>
<td>
<p><b>-F</b></p></td>
<td></td>
<td>
<p>same as <b>--filter=</b>&rsquo;dir-merge
/.rsync-filter&rsquo; repeated: <b>--filter=</b>&rsquo;-
.rsync-filter&rsquo;</p> </td></tr>
</table>
<p style="margin-left:11%;"><b>--exclude</b>=<i>PATTERN</i></p>
<p style="margin-left:22%;">exclude files matching
PATTERN</p>
<p style="margin-left:11%;"><b>--exclude-from</b>=<i>FILE</i></p>
<p style="margin-left:22%;">read exclude patterns from
FILE</p>
<p style="margin-left:11%;"><b>--include</b>=<i>PATTERN</i></p>
<p style="margin-left:22%;">don&rsquo;t exclude files
matching PATTERN</p>
<p style="margin-left:11%;"><b>--include-from</b>=<i>FILE</i></p>
<p style="margin-left:22%;">read include patterns from
FILE</p>
<p style="margin-left:11%;"><b>--files-from</b>=<i>FILE</i></p>
<p style="margin-left:22%;">read list of source-file names
from FILE</p>
<p style="margin-left:11%;"><b>--from0</b>, <b>-0</b></p>
<p style="margin-left:22%;">all *-from/filter files are
delimited by 0s</p>
<p style="margin-left:11%;"><b>--old-args</b></p>
<p style="margin-left:22%;">disable the modern
arg-protection idiom</p>
<p style="margin-left:11%;"><b>--secluded-args</b>,
<b>-s</b></p>
<p style="margin-left:22%;">use the protocol to safely send
the args</p>
<p style="margin-left:11%;"><b>--trust-sender</b></p>
<p style="margin-left:22%;">trust the remote sender&rsquo;s
file list</p>
<p style="margin-left:11%;"><b>--copy-as</b>=<i>USER[</i>:GROUP]</p>
<p style="margin-left:22%;">specify user &amp; optional
group for the copy</p>
<p style="margin-left:11%;"><b>--address</b>=<i>ADDRESS</i></p>
<p style="margin-left:22%;">bind address for outgoing
socket to daemon</p>
<p style="margin-left:11%;"><b>--port</b>=<i>PORT</i></p>
<p style="margin-left:22%;">specify double-colon alternate
port number</p>
<p style="margin-left:11%;"><b>--sockopts</b>=<i>OPTIONS</i></p>
<p style="margin-left:22%;">specify custom TCP options</p>
<p style="margin-left:11%;"><b>--blocking-io</b></p>
<p style="margin-left:22%;">use blocking I/O for the remote
shell</p>
<p style="margin-left:11%;"><b>--outbuf</b>=<i>N</i>|L|B</p>
<p style="margin-left:22%;">set out buffering to None,
Line, or Block</p>
<p style="margin-left:11%;"><b>--stats</b></p>
<p style="margin-left:22%;">give some file-transfer
stats</p>
<p style="margin-left:11%;"><b>--8-bit-output</b>,
<b>-8</b></p>
<p style="margin-left:22%;">leave high-bit chars unescaped
in output</p>
<p style="margin-left:11%;"><b>--human-readable</b>,
<b>-h</b></p>
<p style="margin-left:22%;">output numbers in a
human-readable format</p>
<p style="margin-left:11%;"><b>--progress</b></p>
<p style="margin-left:22%;">show progress during
transfer</p>
<table width="100%" border="0" rules="none" frame="void"
       cellspacing="0" cellpadding="0">
<colgroup><col width="11%"/>
<col width="3%"/>
<col width="8%" class="center"/>
<col width="43%"/>
<col width="35%"/>
</colgroup>
<tr valign="top" align="left">
<td></td>
<td>
<p><b>-P</b></p></td>
<td></td>
<td>
<p>same as <b>--partial --progress</b></p></td>
<td>
</td></tr>
</table>
<p style="margin-left:11%;"><b>--itemize-changes</b>,
<b>-i</b></p>
<p style="margin-left:22%;">output a change-summary for all
updates</p>
<p style="margin-left:11%;"><b>--remote-option</b>=<i>OPT</i>,
<b>-M</b></p>
<p style="margin-left:22%;">send OPTION to the remote side
only</p>
<p style="margin-left:11%;"><b>--out-format</b>=<i>FORMAT</i></p>
<p style="margin-left:22%;">output updates using the
specified FORMAT</p>
<p style="margin-left:11%;"><b>--log-file</b>=<i>FILE</i></p>
<p style="margin-left:22%;">log what we&rsquo;re doing to
the specified FILE</p>
<p style="margin-left:11%;"><b>--log-file-format</b>=<i>FMT</i></p>
<p style="margin-left:22%;">log updates using the specified
FMT</p>
<p style="margin-left:11%;"><b>--password-file</b>=<i>FILE</i></p>
<p style="margin-left:22%;">read daemon-access password
from FILE</p>
<p style="margin-left:11%;"><b>--early-input</b>=<i>FILE</i></p>
<p style="margin-left:22%;">use FILE for daemon&rsquo;s
early exec input</p>
<p style="margin-left:11%;"><b>--list-only</b></p>
<p style="margin-left:22%;">list the files instead of
copying them</p>
<p style="margin-left:11%;"><b>--bwlimit</b>=<i>RATE</i></p>
<p style="margin-left:22%;">limit socket I/O bandwidth</p>
<p style="margin-left:11%;"><b>--stop-after</b>=<i>MINS</i></p>
<p style="margin-left:22%;">Stop rsync after MINS minutes
have elapsed</p>
<p style="margin-left:11%;"><b>--stop-at</b>=<i>y-m-dTh</i>:m</p>
<p style="margin-left:22%;">Stop rsync at the specified
point in time</p>
<p style="margin-left:11%;"><b>--fsync</b></p>
<p style="margin-left:22%;">fsync every written file</p>
<p style="margin-left:11%;"><b>--write-batch</b>=<i>FILE</i></p>
<p style="margin-left:22%;">write a batched update to
FILE</p>
<p style="margin-left:11%;"><b>--only-write-batch</b>=<i>FILE</i></p>
<p style="margin-left:22%;">like <b>--write-batch</b> but
w/o updating dest</p>
<p style="margin-left:11%;"><b>--read-batch</b>=<i>FILE</i></p>
<p style="margin-left:22%;">read a batched update from
FILE</p>
<p style="margin-left:11%;"><b>--protocol</b>=<i>NUM</i></p>
<p style="margin-left:22%;">force an older protocol version
to be used</p>
<p style="margin-left:11%;"><b>--iconv</b>=<i>CONVERT_SPEC</i></p>
<p style="margin-left:22%;">request charset conversion of
filenames</p>
<p style="margin-left:11%;"><b>--checksum-seed</b>=<i>NUM</i></p>
<p style="margin-left:22%;">set block/file checksum seed
(advanced)</p>
<p style="margin-left:11%;"><b>--ipv4</b>, <b>-4</b></p>
<p style="margin-left:22%;">prefer IPv4</p>
<p style="margin-left:11%;"><b>--ipv6</b>, <b>-6</b></p>
<p style="margin-left:22%;">prefer IPv6</p>
<h2>OPERANDS
</h2>
<table width="100%" border="0" rules="none" frame="void"
       cellspacing="0" cellpadding="0">
<colgroup><col width="11%"/>
<col width="7%"/>
<col width="4%" class="center"/>
<col width="78%"/>
</colgroup>
<tr valign="top" align="left">
<td></td>
<td>
<p style="margin-top: 1em">&lt;SRC&gt;</p></td>
<td></td>
<td>
<p style="margin-top: 1em">A local source to be copied to a
newly created backup directory.</p></td></tr>
</table>
<p style="margin-left:11%;">&lt;BASE-DIR&gt;/./[&lt;SRC&gt;]</p>
<p style="margin-left:22%;">A local source to be copied to
a newly created backup directory without the base
directory.</p>
<p style="margin-left:11%;">[&lt;USER&gt;@]&lt;HOST&gt;:&lt;SRC&gt;</p>
<p style="margin-left:22%;">A remote shell source to be
copied to a newly created backup directory.</p>
<p style="margin-left:11%;">[&lt;USER&gt;@]&lt;HOST&gt;:&lt;BASE-DIR&gt;/./[&lt;SRC&gt;]</p>
<p style="margin-left:22%;">A remote shell source to be
copied to a newly created backup directory without the base
directory.</p>
<p style="margin-left:11%;">[&lt;USER&gt;@]&lt;HOST&gt;::&lt;MODULE&gt;[/[&lt;SRC&gt;]]</p>
<p style="margin-left:22%;">An rsync daemon source to be
copied to a newly created backup directory.</p>
<p style="margin-left:11%;">[&lt;USER&gt;@]&lt;HOST&gt;::&lt;MODULE&gt;/&lt;BASE-DIR&gt;/./[&lt;SRC&gt;]</p>
<p style="margin-left:22%;">An rsync daemon source to be
copied to a newly created backup directory without the base
directory.</p>
<p style="margin-left:11%;">rsync://[&lt;USER&gt;@]&lt;HOST&gt;[:&lt;PORT&gt;]/&lt;MODULE&gt;[/[&lt;SRC&gt;]]</p>
<p style="margin-left:22%;">An rsync daemon source to be
copied to a newly created backup directory.</p>
<p style="margin-left:11%;">rsync://[&lt;USER&gt;@]&lt;HOST&gt;[:&lt;PORT&gt;]/&lt;MODULE&gt;/&lt;BASE-DIR&gt;/./[&lt;SRC&gt;]</p>
<p style="margin-left:22%;">An rsync daemon source to be
copied to a newly created backup directory without the base
directory.</p>
<h2>FILES
</h2>
<p style="margin-left:11%; margin-top: 1em">./&lt;YEAR&gt;</p>
<p style="margin-left:22%;">A yearly backup directory.</p>
<p style="margin-left:11%;">./&lt;YEAR&gt;[-]&lt;MONTH&gt;</p>
<p style="margin-left:22%;">A monthly backup directory.</p>
<p style="margin-left:11%;">./&lt;YEAR&gt;[-]W&lt;WEEK&gt;</p>
<p style="margin-left:22%;">A weekly backup directory.</p>
<p style="margin-left:11%;">./&lt;YEAR&gt;[-]&lt;MONTH&gt;[-]&lt;DAY&gt;</p>
<p style="margin-left:22%;">A daily backup directory.</p>
<p style="margin-left:11%;">./&lt;YEAR&gt;[-]W&lt;WEEK&gt;[-]&lt;DAY&gt;</p>
<p style="margin-left:22%;">A daily backup directory.</p>
<p style="margin-left:11%;">./&lt;YEAR&gt;[-]&lt;MONTH&gt;[-]&lt;DAY&gt;T&lt;HOUR&gt;</p>
<p style="margin-left:22%;">An hourly backup directory.</p>
<p style="margin-left:11%;">./&lt;YEAR&gt;[-]W&lt;WEEK&gt;[-]&lt;DAY&gt;T&lt;HOUR&gt;</p>
<p style="margin-left:22%;">An hourly backup directory.</p>
<p style="margin-left:11%;">./&lt;YEAR&gt;[-]&lt;MONTH&gt;[-]&lt;DAY&gt;T&lt;HOUR&gt;[:]&lt;MINUTE&gt;</p>
<p style="margin-left:22%;">A minutely backup
directory.</p>
<p style="margin-left:11%;">./&lt;YEAR&gt;[-]W&lt;WEEK&gt;[-]&lt;DAY&gt;T&lt;HOUR&gt;[:]&lt;MINUTE&gt;</p>
<p style="margin-left:22%;">A minutely backup
directory.</p>
<p style="margin-left:11%;">./&lt;YEAR&gt;[-]&lt;MONTH&gt;[-]&lt;DAY&gt;T&lt;HOUR&gt;[:]&lt;MINUTE&gt;[:]&lt;SECOND&gt;</p>
<p style="margin-left:22%;">A secondly backup
directory.</p>
<p style="margin-left:11%;">./&lt;YEAR&gt;[-]W&lt;WEEK&gt;[-]&lt;DAY&gt;T&lt;HOUR&gt;[:]&lt;MINUTE&gt;[:]&lt;SECOND&gt;</p>
<p style="margin-left:22%;">A secondly backup
directory.</p>
<p style="margin-left:11%;">./latest</p>
<p style="margin-left:22%;">A symbolic link to the latest
backup directory.</p>
<p style="margin-left:11%;">./conf/create-config</p>
<p style="margin-left:22%;">An optional configuration file
used by <b><a href="backup-create-rsync.html">backup-create-rsync</a></b>(1) containing long option
names (without leading slashes) and optional option
arguments to be passed to <b>rsync</b>(1) when creating a
new backup directory.</p>
<p style="margin-left:11%;">./conf/create-config.d</p>
<p style="margin-left:22%;">An optional directory used by
<b><a href="backup-create-rsync.html">backup-create-rsync</a></b>(1) containing configuration files
similar to the ./conf/create-config configuration file
containing long option names (without leading slashes) and
optional option arguments to be passed to <b>rsync</b>(1)
when creating a new backup directory. The names of the files
must consist of only characters matching the pattern
[[:alnum:]_.-].</p>
<p style="margin-left:11%;">./conf/rsh</p>
<p style="margin-left:22%;">An optional script to be used
as a remote shell instead of the plain <b>ssh</b>(1). This
script can be used for setting identity files and proxy
commands, for instance.</p>
<p style="margin-left:11%;">./conf/rsync-config</p>
<p style="margin-left:22%;">An optional configuration file
used by <b><a href="backup-rsync.html">backup-rsync</a></b>(1) used by
<b><a href="backup-copy-rsync.html">backup-copy-rsync</a></b>(1) and
<b><a href="backup-create-rsync.html">backup-create-rsync</a></b>(1) used by <b><a href="backup-copy.html">backup-copy</a></b>(1)
and <b><a href="backup-create.html">backup-create</a></b>(1) containing long option names
(without leading slashes) and optional option arguments to
be passed to <b>rsync</b>(1).</p>
<p style="margin-left:11%;">./conf/rsync-config.d</p>
<p style="margin-left:22%;">An optional directory used by
<b><a href="backup-rsync.html">backup-rsync</a></b>(1) used by <b><a href="backup-copy-rsync.html">backup-copy-rsync</a></b>(1)
and <b><a href="backup-create-rsync.html">backup-create-rsync</a></b>(1) used by
<b><a href="backup-copy.html">backup-copy</a></b>(1) and <b><a href="backup-create.html">backup-create</a></b>(1) containing
configuration files similar to the ./conf/rsync-config
configuration file containing long option names (without
leading slashes) and optional option arguments to be passed
to <b>rsync</b>(1). The names of the files must consist of
only characters matching the pattern [[:alnum:]_.-].</p>
<p style="margin-left:11%;">./conf/tag-formats</p>
<p style="margin-left:22%;">An optional configuration file
containing date formats to be used when constructing a
backup directory name for a new backup. Empty lines and
comment lines (starting with a &quot;#&quot;) are allowed,
too. Each date format is tried in turn in order specified
until a non-existing backup directory is found.</p>
<table width="100%" border="0" rules="none" frame="void"
       cellspacing="0" cellpadding="0">
<colgroup><col width="11%"/>
<col width="9%"/>
<col width="2%" class="center"/>
<col width="78%"/>
</colgroup>
<tr valign="top" align="left">
<td></td>
<td>
<p>./tmp/</p></td>
<td></td>
<td>
<p>A temporary directory to be used for creating a new
backup directory.</p></td></tr>
</table>
<p style="margin-left:11%;">./tools/backup-create-rsync</p>
<p style="margin-left:22%;">Used for copying files using
<b>rsync</b>(1).</p>
<p style="margin-left:11%;">&lt;SOURCE-DIRECTORY&gt;/.backup-filter</p>
<p style="margin-left:22%;">An optional per-directory
<b>rsync</b>(1) filter merge-file which can be used for
excluding files from backups. Empty lines and comment lines
(starting with a &quot;#&quot;) are allowed, too.</p>
<h2>COPYRIGHT
</h2>
<p style="margin-left:11%; margin-top: 1em">Copyright
&copy; 2010 - 2024 Eero H&auml;kkinen
&lt;Eero+rsync-backup@H&auml;kkinen.fi&gt;</p>
<p style="margin-left:11%; margin-top: 1em">This program is
free software: you can redistribute it and/or modify it
under the terms of the GNU General Public License version 3
as published by the Free Software Foundation.</p>
<p style="margin-left:11%; margin-top: 1em">This program is
distributed in the hope that it will be useful, but WITHOUT
ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
GNU General Public License for more details.</p>
<p style="margin-left:11%; margin-top: 1em">You should have
received a copy of the GNU General Public License along with
this program. If not, see
&lt;http://www.gnu.org/licenses/&gt;.</p>
<h2>SEE ALSO
</h2>
<p style="margin-left:11%; margin-top: 1em"><b><a href="backup-clean-tmp.html">backup-clean-tmp</a></b>(1),
<b><a href="backup-create-rsync.html">backup-create-rsync</a></b>(1), <b><a href="backup-help.html">backup-help</a></b>(1),
<b><a href="backup-make-tag.html">backup-make-tag</a></b>(1), <b><a href="backup-sources.html">backup-sources</a></b>(1)</p>
<p style="margin-left:11%; margin-top: 1em"><b>rsync</b>(1),
<b>ssh</b>(1) <br/>
<a href="https://github.Eero.H&auml;kkinen.fi/rsync-backup/">Home
page</a></p>
<hr/>
