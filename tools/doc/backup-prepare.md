<link href="groff-md.css" rel="stylesheet" type="text/css" />
<h1>BACKUP-PREPARE</h1>
<hr/>
<h2>NAME
</h2>
<p style="margin-left:11%; margin-top: 1em">backup-prepare
- prepare for backups</p>
<h2>SYNOPSIS
</h2>
<table width="100%" border="0" rules="none" frame="void"
       cellspacing="0" cellpadding="0">
<colgroup><col width="11%"/>
<col width="21%"/>
<col width="2%" class="center"/>
<col width="20%"/>
<col width="46%"/>
</colgroup>
<tr valign="top" align="left">
<td></td>
<td>
<p style="margin-top: 1em"><b>backup-prepare</b></p></td>
<td></td>
<td>
<p style="margin-top: 1em">[<i>&lt;OPTION&gt;</i>]...</p></td>
<td>
</td></tr>
</table>
<h2>DESCRIPTION
</h2>
<p style="margin-left:11%; margin-top: 1em">Prepare for
backups \by executing preparation scripts. This can be used
for dumping database snapshots to files, for instance.</p>
<p style="margin-left:11%; margin-top: 1em">Preparation is
done with idle I/O priority (whose impact on normal system
activity should be zero), with an adjusted niceness (which
affect process scheduling) and with minimized effect on file
system cache provided that the commands <b>ionice</b>(1),
<b>nice</b>(1) and <b>nocache</b>(1) are available. For
details, see <b><a href="backup-nice.html">backup-nice</a></b>(1).</p>
<h2>OPTIONS
</h2>
<p style="margin-left:11%; margin-top: 1em"><b>-h</b>,
<b>--help[=</b>&lt;FORMAT&gt;]</p>
<p style="margin-left:22%;">Show this help message and
exit.</p>
<p style="margin-left:11%;"><b>-V</b>, <b>--version</b></p>
<p style="margin-left:22%;">Show version information and
exit.</p>
<h2>FILES
</h2>
<p style="margin-left:11%; margin-top: 1em">./conf/dump-config</p>
<p style="margin-left:22%;">An optional configuration file
used by some ./conf/pre.d/*-dump scripts containing
configuration variable assignments.</p>
<p style="margin-left:11%;">./conf/pre.d/</p>
<p style="margin-left:22%;">An optional directory
containing scripts which are executed in lexical order of
names. The names of the files must consist of only
characters matching the pattern [[:alnum:]_.-].</p>
<h2>COPYRIGHT
</h2>
<p style="margin-left:11%; margin-top: 1em">Copyright
&copy; 2010 - 2022 Eero H&auml;kkinen
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
<p style="margin-left:11%; margin-top: 1em"><b><a href="backup.html">backup</a></b>(1),
<b><a href="backup-help.html">backup-help</a></b>(1), <b><a href="backup-nice.html">backup-nice</a></b>(1),
<b><a href="backup-rsync.html">backup-rsync</a></b>(1)</p>
<p style="margin-left:11%; margin-top: 1em"><b>ionice</b>(1),
<b>nice</b>(1), <b>nocache</b>(1) <br/>
<a href="https://github.Eero.H&auml;kkinen.fi/rsync-backup/">Home
page</a></p>
<hr/>
