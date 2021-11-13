MV	= mv
SED	= sed

README.md: README
	# $@
	$(SED) \
		-e '$$a\
	\
	[backup]: ../tools/README.md#backup\
	[backup-copy]: ../tools/README.md#backup-copy\
	[backup-copy-rsync]: ../tools/README.md#backup-copy-rsync\
	[backup-create]: ../tools/README.md#backup-create\
	[backup-create-rsync]: ../tools/README.md#backup-create-rsync\
	[backup-mirror]: ../tools/README.md#backup-mirror\
	[backup-mirror-sources]: ../tools/README.md#backup-mirror-sources\
	[backup-nice]: ../tools/README.md#backup-nice\
	[backup-nologin]: ../tools/README.md#backup-nologin\
	[backup-prepare]: ../tools/README.md#backup-prepare\
	[backup-purge]: ../tools/README.md#backup-purge\
	[backup-rsync]: ../tools/README.md#backup-rsync\
	[backup-sources]: ../tools/README.md#backup-sources' \
		-e '\|\n|{P;D;}' \
		-e '\|^[[]|{P;D;}' \
		-e 's|<YEAR>\(T*[[]*\([[][-:][]]\)*W*\(<[[:upper:]]*>\)*9*\)*[]]*|`&`|g' \
		-e 's|\(pattern\) \(\([[:digit:]]*\([[]\(\([[][^][]*[]]\)*[^][]*\)*[]]\)*\)*\)|\1 `\2`|g' \
		-e '\|^[^[:space:]@`][^/@`]*$$|s|[]<>[]|\\&|g' \
		-e 's|\(backup[[:lower:]-]*\)[(]1[)]|**[\1]**\\(1\\)|g' \
		-e 's|\(conf/[[:lower:]/.-]*\)|**[\1]**|g' \
		-e 's|\([[:lower:]][[:lower:]-]*\)[(]1[)]|**\1**(1)|g' \
		-e 's|^    \([^[:space:]][^[:space:]]*\)$$|  * `\1`|' \
		-e 's|^            \([^[:space:]][^[:space:]]*\)$$|      - `\1`|' \
		-e 's|^        |    |' \
		-e '\|\n|!N' \
		-e '\|^  [*] |s|\n        [^[:space:]]|\\&|' \
		-e '\|^      [ -] [^[:space:]]|s|\(\n\)        [^[:space:]]|\1&|' \
		-e 's|^The [*]*[[]\(conf/\([[:lower:]-]*\)[.]*\([[:lower:]]*\)/*\)[]][*]* \([^[:space:]]*\)\(\n\)\(--*\)$$|The \1 \4\5\6\5[\1]: #the-conf\2\3-\4|' \
		-e 'P' \
		-e 'D' \
		-- README \
		> '$@~'
	$(MV) -- '$@~' '$@'

FORCE: FORCE/FORCE
FORCE/FORCE:
