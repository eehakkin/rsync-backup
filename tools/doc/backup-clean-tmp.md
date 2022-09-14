<link href="groff-md.css" rel="stylesheet" type="text/css" />
<h1>BACKUP-CLEAN-TMP</h1>
<hr/>
<h2>NAME
</h2>
<p style="margin-left:11%; margin-top: 1em">backup-clean-tmp
- clean up a temporary directory</p>
<h2>SYNOPSIS
</h2>
<table width="100%" border="0" rules="none" frame="void"
       cellspacing="0" cellpadding="0">
<colgroup><col width="11%"/>
<col width="24%"/>
<col width="2%" class="center"/>
<col width="49%"/>
<col width="14%"/>
</colgroup>
<tr valign="top" align="left">
<td></td>
<td>
<p style="margin-top: 1em"><b>backup-clean-tmp</b></p></td>
<td></td>
<td>
<p style="margin-top: 1em">[<i>&lt;OPTION&gt;</i>]...
[<i>&lt;BASE-PREFIX&gt;</i>]...</p> </td>
<td>
</td></tr>
</table>
<h2>DESCRIPTION
</h2>
<p style="margin-left:11%; margin-top: 1em">Remove stale
subdirectories from a temporary directory.</p>
<h2>OPTIONS
</h2>
<p style="margin-left:11%; margin-top: 1em"><b>-n</b>,
<b>--dry-run</b></p>
<p style="margin-left:22%;">Perform a trial run with no
changes made.</p>
<p style="margin-left:11%;"><b>-h</b>,
<b>--help[=</b>&lt;FORMAT&gt;]</p>
<p style="margin-left:22%;">Show this help message and
exit.</p>
<p style="margin-left:11%;"><b>-V</b>, <b>--version</b></p>
<p style="margin-left:22%;">Show version information and
exit.</p>
<h2>OPERANDS
</h2>
<p style="margin-left:11%; margin-top: 1em">&lt;BASE-PREFIX&gt;</p>
<p style="margin-left:22%;">A subdirectory basename prefix.
Subdirectories within the temporary directory having this
basename prefix are removed unconditionally.</p>
<h2>FILES
</h2>
<table width="100%" border="0" rules="none" frame="void"
       cellspacing="0" cellpadding="0">
<colgroup><col width="11%"/>
<col width="9%"/>
<col width="2%" class="center"/>
<col width="33%"/>
<col width="45%"/>
</colgroup>
<tr valign="top" align="left">
<td></td>
<td>
<p style="margin-top: 1em">./tmp/</p></td>
<td></td>
<td>
<p style="margin-top: 1em">A temporary directory.</p></td>
<td>
</td></tr>
</table>
<p style="margin-left:11%;">./tmp/&lt;BASE-PREFIX&gt;-&lt;ANYTHING&gt;/</p>
<p style="margin-left:22%;">A subdirectory to be removed
unconditionally.</p>
<p style="margin-left:11%;">./tmp/&lt;OTHER-BASE-PREFIX&gt;-&lt;ANYTHING&gt;/</p>
<p style="margin-left:22%;">A subdirectory to be removed if
not used for awhile.</p>
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
<p style="margin-left:11%; margin-top: 1em"><b><a href="backup-copy.html">backup-copy</a></b>(1),
<b><a href="backup-create.html">backup-create</a></b>(1), <b><a href="backup-help.html">backup-help</a></b>(1),
<b><a href="backup-purge.html">backup-purge</a></b>(1), <b><a href="backup-rsync.html">backup-rsync</a></b>(1) <br/>
<a href="https://github.Eero.H&auml;kkinen.fi/rsync-backup/">Home
page</a></p>
<hr/>
