all: zplugin-crasis.plugin.zsh.zwc crasis.zwc -zcrasis-process-buffer.zwc themes/default.cr-theme.zwc themes/zdharma.cr-theme.zwc test

%.zwc : %
	share/zcompile -- $<

test:
	make VERBOSE=$(VERBOSE) NODIFF=$(NODIFF) DEBUG=$(DEBUG) -C test test

doc: crasis
	rm -rf zsdoc/data zsdoc/*.adoc
	zsd -v --cignore '(\#*FUNCTION:*{{{*|\#[[:space:]]#}}}*)' --fpath `pwd` crasis

clean:
	rm -f -- zplugin-crasis.plugin.zsh.zwc crasis.zwc -zcrasis-process-buffer.zwc
	rm -rf zsdoc/data

.PHONY: all test clean
# vim:noet:sts=8:ts=8
