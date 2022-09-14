<link href="groff-md.css" rel="stylesheet" type="text/css" />
<h1>BACKUP-MAKE-TAG</h1>
<hr/>
<h2>NAME
</h2>
<p style="margin-left:11%; margin-top: 1em">backup-make-tag
- construct a new backup directory name</p>
<h2>SYNOPSIS
</h2>
<table width="100%" border="0" rules="none" frame="void"
       cellspacing="0" cellpadding="0">
<colgroup><col width="11%"/>
<col width="23%"/>
<col width="1%" class="center"/>
<col width="40%"/>
<col width="25%"/>
</colgroup>
<tr valign="top" align="left">
<td></td>
<td>
<p style="margin-top: 1em"><b>backup-make-tag</b></p></td>
<td></td>
<td>
<p style="margin-top: 1em"><i>&lt;OPTION&gt;</i>...
[<i>&lt;ALT-DIR&gt;</i>]...</p> </td>
<td>
</td></tr>
</table>
<h2>DESCRIPTION
</h2>
<p style="margin-left:11%; margin-top: 1em">Construct a new
backup backup directory name based on date and time and the
names of the existing backup directories.</p>
<h2>OPTIONS
</h2>
<p style="margin-left:11%; margin-top: 1em"><b>-h</b>,
<b>--help[=</b>&lt;FORMAT&gt;]</p>
<p style="margin-left:22%;">Show this help message and
exit.</p>
<p style="margin-left:11%;"><b>-V</b>, <b>--version</b></p>
<p style="margin-left:22%;">Show version information and
exit.</p>
<p style="margin-left:11%;"><b>--tag-format</b>
&lt;FORMAT&gt;</p>
<p style="margin-left:22%;">Set the date format to be used
when constructing a backup directory name for a new
backup.</p>
<p style="margin-left:11%;"><b>--tag-name</b>
&lt;NAME&gt;</p>
<p style="margin-left:22%;">Set the name to be used when
constructing a backup directory name for a new backup.</p>
<h2>OPERANDS
</h2>
<p style="margin-left:11%; margin-top: 1em">&lt;ALT-DIR&gt;</p>
<p style="margin-left:22%;">An alternative directory
containing existing backup directories.</p>
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
<p style="margin-left:11%;">./conf/tag-formats</p>
<p style="margin-left:22%;">An optional configuration file
containing date formats to be used when constructing a
backup directory name for a new backup. Empty lines and
comment lines (starting with a &quot;#&quot;) are allowed,
too. Each date format is tried in turn in order specified
until a non-existing backup directory is found.</p>
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
<p style="margin-left:11%; margin-top: 1em"><b><a href="backup-create.html">backup-create</a></b>(1),
<b><a href="backup-help.html">backup-help</a></b>(1), <b><a href="backup-rsync.html">backup-rsync</a></b>(1) <br/>
<a href="https://github.Eero.H&auml;kkinen.fi/rsync-backup/">Home
page</a></p>
<hr/>
