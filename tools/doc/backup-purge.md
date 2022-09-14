<link href="groff-md.css" rel="stylesheet" type="text/css" />
<h1>BACKUP-PURGE</h1>
<hr/>
<h2>NAME
</h2>
<p style="margin-left:11%; margin-top: 1em">backup-purge -
delete old backup directories</p>
<h2>SYNOPSIS
</h2>
<table width="100%" border="0" rules="none" frame="void"
       cellspacing="0" cellpadding="0">
<colgroup><col width="11%"/>
<col width="18%"/>
<col width="2%" class="center"/>
<col width="54%"/>
<col width="15%"/>
</colgroup>
<tr valign="top" align="left">
<td></td>
<td>
<p style="margin-top: 1em"><b>backup-purge</b></p></td>
<td></td>
<td>
<p style="margin-top: 1em">[<i>&lt;OPTION&gt;</i>]...
[<i>&lt;PATTERN&gt;=&lt;DAYS&gt;</i>]...</p> </td>
<td>
</td></tr>
</table>
<h2>DESCRIPTION
</h2>
<p style="margin-left:11%; margin-top: 1em">Delete old
backup directories based on pattern matching and ages. The
default is to keep secondly, minutely, hourly and fake daily
backup directories for at most one day, daily and fake
weekly backup directories for at least one week, weekly and
fake monthly backup directories for at least one month,
monthly and fake yearly backup directories for at least one
year and yearly backup directories forever (thus the default
operands are hourly=0 fake-daily=0 daily=7 fake-weekly=7
weekly=31 fake-monthly=31 monthly=366 fake-yearly=366).</p>
<h2>OPTIONS
</h2>
<p style="margin-left:11%; margin-top: 1em"><b>-f</b>,
<b>--force</b></p>
<p style="margin-left:22%;">Purge even while on battery
power.</p>
<p style="margin-left:11%;"><b>-n</b>, <b>--dry-run</b></p>
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
<p style="margin-left:11%; margin-top: 1em">&lt;PATTERN&gt;=&lt;DAYS&gt;</p>
<p style="margin-left:22%;">Backup directories matching
&lt;PATTERN&gt; are deleted if they are over &lt;DAYS&gt;
days old.</p>
<p style="margin-left:11%; margin-top: 1em"><b>Special
patterns:</b></p>
<table width="100%" border="0" rules="none" frame="void"
       cellspacing="0" cellpadding="0">
<colgroup><col width="11%"/>
<col width="9%"/>
<col width="2%" class="center"/>
<col width="52%"/>
<col width="26%"/>
</colgroup>
<tr valign="top" align="left">
<td></td>
<td>
<p>yearly</p></td>
<td></td>
<td>
<p>Matches yearly backup directories.</p></td>
<td>
</td></tr>
</table>
<p style="margin-left:22%; margin-top: 1em">This
corresponds the following pattern:</p>
<p style="margin-left:22%; margin-top: 1em">[0-9][0-9][0-9][0-9]</p>
<p style="margin-left:22%; margin-top: 1em">(for
&lt;YEAR&gt;).</p>
<p style="margin-left:11%;">monthly</p>
<p style="margin-left:22%;">Matches monthly backup
directories.</p>
<p style="margin-left:22%; margin-top: 1em">This
corresponds the following patterns:</p>
<p style="margin-left:22%; margin-top: 1em">[0-9][0-9][0-9][0-9][0-9][0-9]
<br/>
[0-9][0-9][0-9][0-9]-[0-9][0-9]</p>
<p style="margin-left:22%; margin-top: 1em">(for
&lt;YEAR&gt;[-]&lt;MONTH&gt;).</p>
<table width="100%" border="0" rules="none" frame="void"
       cellspacing="0" cellpadding="0">
<colgroup><col width="11%"/>
<col width="9%"/>
<col width="2%" class="center"/>
<col width="52%"/>
<col width="26%"/>
</colgroup>
<tr valign="top" align="left">
<td></td>
<td>
<p>weekly</p></td>
<td></td>
<td>
<p>Matches weekly backup directories.</p></td>
<td>
</td></tr>
</table>
<p style="margin-left:22%; margin-top: 1em">This
corresponds the following patterns:</p>
<p style="margin-left:22%; margin-top: 1em">[0-9][0-9][0-9][0-9]W[0-9][0-9]
<br/>
[0-9][0-9][0-9][0-9]-W[0-9][0-9]</p>
<p style="margin-left:22%; margin-top: 1em">(for
&lt;YEAR&gt;[-]W&lt;WEEK&gt;).</p>
<table width="100%" border="0" rules="none" frame="void"
       cellspacing="0" cellpadding="0">
<colgroup><col width="11%"/>
<col width="7%"/>
<col width="4%" class="center"/>
<col width="50%"/>
<col width="28%"/>
</colgroup>
<tr valign="top" align="left">
<td></td>
<td>
<p style="margin-top: 1em">daily</p></td>
<td></td>
<td>
<p style="margin-top: 1em">Matches daily backup
directories.</p> </td>
<td>
</td></tr>
</table>
<p style="margin-left:22%; margin-top: 1em">This
corresponds the following patterns:</p>
<p style="margin-left:22%; margin-top: 1em">[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]
<br/>
[0-9][0-9][0-9][0-9]-[0-9][0-9]-[0-9][0-9] <br/>
[0-9][0-9][0-9][0-9]W[0-9][0-9][0-9] <br/>
[0-9][0-9][0-9][0-9]-W[0-9][0-9]-[0-9]</p>
<p style="margin-left:22%; margin-top: 1em">(for
&lt;YEAR&gt;[-]&lt;MONTH&gt;[-]&lt;DAY&gt; and
&lt;YEAR&gt;[-]W&lt;WEEK&gt;[-]&lt;DAY&gt;).</p>
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
<p style="margin-top: 1em">hourly</p></td>
<td></td>
<td>
<p style="margin-top: 1em">Matches hourly, minutely and
secondly backup directories.</p></td></tr>
</table>
<p style="margin-left:22%; margin-top: 1em">This
corresponds the following patterns:</p>
<p style="margin-left:22%; margin-top: 1em">[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]T[0-9][0-9]*
<br/>
[0-9][0-9][0-9][0-9]-[0-9][0-9]-[0-9][0-9]T[0-9][0-9]* <br/>
[0-9][0-9][0-9][0-9]W[0-9][0-9][0-9]T[0-9][0-9]* <br/>
[0-9][0-9][0-9][0-9]-W[0-9][0-9]-[0-9]T[0-9][0-9]*</p>
<p style="margin-left:22%; margin-top: 1em">(for <br/>
&lt;YEAR&gt;[-]&lt;MONTH&gt;[-]&lt;DAY&gt;T&lt;HOUR&gt;[[:]&lt;MINUTE&gt;[[:]&lt;SECOND&gt;]]
and <br/>
&lt;YEAR&gt;[-]W&lt;WEEK&gt;[-]&lt;DAY&gt;T&lt;HOUR&gt;[[:]&lt;MINUTE&gt;[[:]&lt;SECOND&gt;]]).</p>
<p style="margin-left:11%;">fake-yearly</p>
<p style="margin-left:22%;">Matches yearly backup
directories if the year is 9999.</p>
<p style="margin-left:22%; margin-top: 1em">This
corresponds the pattern 9999.</p>
<p style="margin-left:11%;">fake-monthly</p>
<p style="margin-left:22%;">Matches monthly backup
directories if the month is 99.</p>
<p style="margin-left:22%; margin-top: 1em">This
corresponds the following patterns:</p>
<p style="margin-left:22%; margin-top: 1em">[0-9][0-9][0-9][0-9]99
<br/>
[0-9][0-9][0-9][0-9]-99</p>
<p style="margin-left:22%; margin-top: 1em">(for
&lt;YEAR&gt;[-]99).</p>
<p style="margin-left:11%;">fake-weekly</p>
<p style="margin-left:22%;">Matches weekly backup
directories if the week is 99.</p>
<p style="margin-left:22%; margin-top: 1em">This
corresponds the following patterns:</p>
<p style="margin-left:22%; margin-top: 1em">[0-9][0-9][0-9][0-9]W99
<br/>
[0-9][0-9][0-9][0-9]-W99</p>
<p style="margin-left:22%; margin-top: 1em">(for
&lt;YEAR&gt;[-]W99).</p>
<p style="margin-left:11%;">fake-daily</p>
<p style="margin-left:22%;">Matches daily backup
directories if the day of a month is 99 or the day of a week
is 9.</p>
<p style="margin-left:22%; margin-top: 1em">This
corresponds the following patterns:</p>
<p style="margin-left:22%; margin-top: 1em">[0-9][0-9][0-9][0-9][0-9][0-9]99
<br/>
[0-9][0-9][0-9][0-9]-[0-9][0-9]-99 <br/>
[0-9][0-9][0-9][0-9]W[0-9][0-9]9 <br/>
[0-9][0-9][0-9][0-9]-W[0-9][0-9]-9</p>
<p style="margin-left:22%; margin-top: 1em">(for
&lt;YEAR&gt;[-]&lt;MONTH&gt;[-]99 and
&lt;YEAR&gt;[-]W&lt;WEEK&gt;[-]9).</p>
<p style="margin-left:11%;">fake-hourly</p>
<p style="margin-left:22%;">Matches hourly, minutely and
secondly backup directories if the hour is 99.</p>
<p style="margin-left:22%; margin-top: 1em">This
corresponds the following patterns:</p>
<p style="margin-left:22%; margin-top: 1em">[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]T99*
<br/>
[0-9][0-9][0-9][0-9]-[0-9][0-9]-[0-9][0-9]T99* <br/>
[0-9][0-9][0-9][0-9]W[0-9][0-9][0-9]T99* <br/>
[0-9][0-9][0-9][0-9]-W[0-9][0-9]-[0-9]T99*</p>
<p style="margin-left:22%; margin-top: 1em">(for <br/>
&lt;YEAR&gt;[-]&lt;MONTH&gt;[-]&lt;DAY&gt;T99[[:]&lt;MINUTE&gt;[[:]&lt;SECOND&gt;]]
and <br/>
&lt;YEAR&gt;[-]W&lt;WEEK&gt;[-]&lt;DAY&gt;T99[[:]&lt;MINUTE&gt;[[:]&lt;SECOND&gt;]]).</p>
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
<p style="margin-left:11%;">./conf/purge-list</p>
<p style="margin-left:22%;">An optional configuration file
containing patterns and ages which override the default
ones. The file must contain operand lines having the
following form:</p>
<p style="margin-left:22%; margin-top: 1em">&lt;PATTERN&gt;=&lt;DAYS&gt;</p>
<p style="margin-left:22%; margin-top: 1em">Empty lines and
comment lines (starting with a &quot;#&quot;) are allowed,
too. Backup directories matching &lt;PATTERN&gt; are deleted
if they are over &lt;DAYS&gt; days old.</p>
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
<p>A temporary directory to be used for deleting old backup
directories.</p> </td></tr>
</table>
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
<p style="margin-left:11%; margin-top: 1em"><b><a href="backup.html">backup</a></b>(1),
<b><a href="backup-help.html">backup-help</a></b>(1), <b><a href="backup-mirror.html">backup-mirror</a></b>(1)</p>
<p style="margin-left:11%; margin-top: 1em"><b>on_ac_power</b>(1)
<br/>
<a href="https://github.Eero.H&auml;kkinen.fi/rsync-backup/">Home
page</a></p>
<hr/>
