DOT	= dot
MV	= mv -f
RM	= rm -f
SED	= sed

all:       FORCE all-md backup-all.svg
all-all:   all-html all-md all-pdf all-ps all-troff all-xhtml
all-html:  FORCE *.html  $(patsubst ../%,%.html,$(wildcard ../backup ../backup-*[!n]))
all-md:    FORCE *.md    $(patsubst ../%,%.md,$(wildcard ../backup ../backup-*[!n]))
all-pdf:   FORCE *.pdf   $(patsubst ../%,%.pdf,$(wildcard ../backup ../backup-*[!n]))
all-ps:    FORCE *.ps    $(patsubst ../%,%.ps,$(wildcard ../backup ../backup-*[!n]))
all-troff: FORCE *.1     $(patsubst ../%,%.1,$(wildcard ../backup ../backup-*[!n]))
all-xhtml: FORCE *.xhtml $(patsubst ../%,%.xhtml,$(wildcard ../backup ../backup-*[!n]))

%.svg: %.gv
	# $@
	$(DOT) -o '$@~' -T svg < '$*.gv'
	$(MV) -- '$@~' '$@'

back%.1: ../back%
	# $@
	( cd -- ../.. && exec 'tools/back$*' --help=troff ) > '$@~'
	$(MV) -- '$@~' '$@'

back%.html: ../back%
	# $@
	( cd -- ../.. && exec 'tools/back$*' --help=html ) > '$@~'
	$(SED) \
		-i \
		-e '/^<!DOCTYPE/,$$!d' \
		-e 's|<\([[:lower:]]*\)>\(backup\(-[[:lower:]]*\)*\)</\1>[(]1[)]|<\1><a href="\2.xhtml">\2</a></\1>(1)|g' \
		-- '$@~'
	$(MV) -- '$@~' '$@'

back%.md: back%.xhtml
	# $@
	$(SED) \
		-e '1i\
	<link href="groff-md.css" rel="stylesheet" type="text/css" />' \
		-e '1,\|<body>|d' \
		-e '\|</body>|,$$d' \
		-e 's|></col>|/>|g' \
		-e 's|[.]xhtml">|.html">|g' \
		-e '\|^$$|d' \
		-- 'back$*.xhtml' \
		> '$@~'
	$(MV) -- '$@~' '$@'

back%.pdf: ../back%
	# $@
	( cd -- ../.. && exec 'tools/back$*' --help=pdf ) > '$@~'
	$(MV) -- '$@~' '$@'

back%.ps: ../back%
	# $@
	( cd -- ../.. && exec 'tools/back$*' --help=ps ) > '$@~'
	$(MV) -- '$@~' '$@'

back%.xhtml: ../back%
	# $@
	( cd -- ../.. && exec 'tools/back$*' --help=xhtml ) > '$@~'
	$(SED) \
		-i \
		-e 's|<\([[:lower:]]*\)>\(backup\(-[[:lower:]]*\)*\)</\1>[(]1[)]|<\1><a href="\2.xhtml">\2</a></\1>(1)|g' \
		-- '$@~'
	$(MV) -- '$@~' '$@'

%: ;

clean: FORCE
	$(RM) -- *.html *.md *.pdf *.ps *.svg *.xhtml

FORCE: FORCE/FORCE
FORCE/FORCE:
