<link href="groff-md.css" rel="stylesheet" type="text/css" />
<h1>BACKUP-NICE</h1>
<hr/>
<h2>NAME
</h2>
<p style="margin-left:11%; margin-top: 1em">backup-nice -
run a backup command nicely</p>
<h2>SYNOPSIS
</h2>
<table width="100%" border="0" rules="none" frame="void"
       cellspacing="0" cellpadding="0">
<colgroup><col width="11%"/>
<col width="17%"/>
<col width="1%" class="center"/>
<col width="31%"/>
<col width="40%"/>
</colgroup>
<tr valign="top" align="left">
<td></td>
<td>
<p style="margin-top: 1em"><b>backup-nice</b></p></td>
<td></td>
<td>
<p style="margin-top: 1em"><i>&lt;COMMAND&gt;</i>
[<i>&lt;ARG&gt;</i>]...</p> </td>
<td>
</td></tr>
<tr valign="top" align="left">
<td></td>
<td>
<p><b>backup-nice</b></p></td>
<td></td>
<td>
<p><i>&lt;OPTION&gt;</i>...</p></td>
<td>
</td></tr>
</table>
<h2>DESCRIPTION
</h2>
<p style="margin-left:11%; margin-top: 1em">Run a backup
command with idle I/O priority (whose impact on normal
system activity should be zero), with an adjusted niceness
(which affect process scheduling) and with minimized effect
on file system cache provided that the commands
<b>ionice</b>(1), <b>nice</b>(1) and <b>nocache</b>(1) are
available.</p>
<h2>OPTIONS
</h2>
<p style="margin-left:11%; margin-top: 1em"><b>-h</b>,
<b>--help[=</b>&lt;FORMAT&gt;]</p>
<p style="margin-left:22%;">Show this help message and
exit.</p>
<p style="margin-left:11%;"><b>-V</b>, <b>--version</b></p>
<p style="margin-left:22%;">Show version information and
exit.</p>
<h2>OPERANDS
</h2>
<p style="margin-left:11%; margin-top: 1em">&lt;COMMAND&gt;
[&lt;ARG&gt;]...</p>
<p style="margin-left:22%;">A backup command to be
executed.</p>
<h2>COPYRIGHT
</h2>
<p style="margin-left:11%; margin-top: 1em">Copyright
&copy; 2018 - 2022 Eero H&auml;kkinen
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
<p style="margin-left:11%; margin-top: 1em"><b><a href="backup-help.html">backup-help</a></b>(1),
<b><a href="backup-prepare.html">backup-prepare</a></b>(1), <b><a href="backup-rsync.html">backup-rsync</a></b>(1)</p>
<p style="margin-left:11%; margin-top: 1em"><b>ionice</b>(1),
<b>nice</b>(1), <b>nocache</b>(1) <br/>
<a href="https://github.Eero.H&auml;kkinen.fi/rsync-backup/">Home
page</a></p>
<hr/>
