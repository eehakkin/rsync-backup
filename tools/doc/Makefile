DOT	= dot
MV	= mv -f
RM	= rm -f

all: FORCE backup-all.svg

%.svg: %.gv
	# $@
	$(DOT) -o '$@~' -T svg < '$*.gv'
	$(MV) -- '$@~' '$@'

clean: FORCE
	$(RM) -- *.svg

FORCE: FORCE/FORCE
FORCE/FORCE:
