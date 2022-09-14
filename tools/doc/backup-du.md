<link href="groff-md.css" rel="stylesheet" type="text/css" />
<h1>BACKUP-DU</h1>
<hr/>
<h2>NAME
</h2>
<p style="margin-left:11%; margin-top: 1em">backup-du -
estimate file space usage</p>
<h2>SYNOPSIS
</h2>
<table width="100%" border="0" rules="none" frame="void"
       cellspacing="0" cellpadding="0">
<colgroup><col width="11%"/>
<col width="14%"/>
<col width="1%" class="center"/>
<col width="74%"/>
</colgroup>
<tr valign="top" align="left">
<td></td>
<td>
<p style="margin-top: 1em"><b>backup-du</b></p></td>
<td></td>
<td>
<p style="margin-top: 1em">[<i>-a</i>] [<i>-B
&lt;SIZE&gt;</i>] [<i>-l</i>] [<i>-f</i>] [<i>--help</i>
[<i>&lt;FORMAT&gt;</i>]] [<i>-h</i>] [<i>-k</i>] [<i>-m</i>]
[<i>-S</i>] [<i>--si</i>] [<i>-s</i>] [<i>-c</i>]
[<i>-V</i>] [<i>&lt;PATH&gt;</i> ...]</p></td></tr>
</table>
<h2>DESCRIPTION
</h2>
<p style="margin-left:11%; margin-top: 1em">Summarize disk
usage by counting used and releasable blocks and their
sizes.</p>
<h2>OPTIONS
</h2>
<p style="margin-left:11%; margin-top: 1em"><b>-a</b>,
<b>--all</b></p>
<p style="margin-left:22%;">Write counts for all files, not
just directories.</p>
<p style="margin-left:11%;"><b>-B</b> &lt;SIZE&gt;,
<b>--block-size</b> &lt;SIZE&gt;</p>
<p style="margin-left:22%;">Scale sizes down by
&lt;SIZE&gt; before printing them.</p>
<p style="margin-left:11%;"><b>-l</b>,
<b>--count-links</b></p>
<p style="margin-left:22%;">Count sizes many times if hard
linked.</p>
<p style="margin-left:11%;"><b>-f</b>,
<b>--full-size</b></p>
<p style="margin-left:22%;">Print full sizes.</p>
<p style="margin-left:11%;"><b>--help</b>
[&lt;FORMAT&gt;]</p>
<p style="margin-left:22%;">Show this help message and
exit.</p>
<p style="margin-left:11%;"><b>-h</b>,
<b>--human-readable</b></p>
<p style="margin-left:22%;">Print sizes in human readable
format.</p>
<table width="100%" border="0" rules="none" frame="void"
       cellspacing="0" cellpadding="0">
<colgroup><col width="11%"/>
<col width="3%"/>
<col width="8%" class="center"/>
<col width="33%"/>
<col width="45%"/>
</colgroup>
<tr valign="top" align="left">
<td></td>
<td>
<p><b>-k</b></p></td>
<td></td>
<td>
<p>Like <b>--block-size</b>=<i>KiB</i>.</p></td>
<td>
</td></tr>
<tr valign="top" align="left">
<td></td>
<td>
<p><b>-m</b></p></td>
<td></td>
<td>
<p>Like <b>--block-size</b>=<i>MiB</i>.</p></td>
<td>
</td></tr>
</table>
<p style="margin-left:11%;"><b>-S</b>,
<b>--separate-dirs</b></p>
<p style="margin-left:22%;">For directories do not include
size of subdirectories.</p>
<table width="100%" border="0" rules="none" frame="void"
       cellspacing="0" cellpadding="0">
<colgroup><col width="11%"/>
<col width="6%"/>
<col width="5%" class="center"/>
<col width="78%"/>
</colgroup>
<tr valign="top" align="left">
<td></td>
<td>
<p><b>--si</b></p></td>
<td></td>
<td>
<p>Like <b>--human-readable</b>, but use powers of 1000 not
1024.</p> </td></tr>
</table>
<p style="margin-left:11%;"><b>-s</b>,
<b>--summarize</b></p>
<p style="margin-left:22%;">Display only a total for each
argument.</p>
<p style="margin-left:11%;"><b>-c</b>, <b>--total</b></p>
<p style="margin-left:22%;">Produce a grand total.</p>
<p style="margin-left:11%;"><b>-V</b>, <b>--version</b></p>
<p style="margin-left:22%;">Show version information and
exit.</p>
<h2>OPERANDS
</h2>
<table width="100%" border="0" rules="none" frame="void"
       cellspacing="0" cellpadding="0">
<colgroup><col width="11%"/>
<col width="9%"/>
<col width="2%" class="center"/>
<col width="67%"/>
<col width="11%"/>
</colgroup>
<tr valign="top" align="left">
<td></td>
<td>
<p style="margin-top: 1em">&lt;PATH&gt;</p></td>
<td></td>
<td>
<p style="margin-top: 1em">A path whose disk usage is to be
summarized.</p> </td>
<td>
</td></tr>
</table>
<h2>COPYRIGHT
</h2>
<p style="margin-left:11%; margin-top: 1em">Copyright
&copy; 2022 - 2024 Eero H&auml;kkinen
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
<p style="margin-left:11%; margin-top: 1em"><b><a href="backup-help.html">backup-help</a></b>(1)
<br/>
<a href="https://github.Eero.H&auml;kkinen.fi/rsync-backup/">Home
page</a></p>
<hr/>
