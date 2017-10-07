all: zplugin-crasis.plugin.zsh.zwc crasis.zwc -zcrasis-process-buffer.zwc themes/default.cr-theme.zwc

%.zwc : %
	share/zcompile -- $<

doc: crasis
	rm -rf zsdoc/data zsdoc/*.adoc
	zsd -v --cignore '(\#*FUNCTION:*{{{*|\#[[:space:]]#}}}*)' --fpath `pwd` crasis

clean:
	rm -f -- zplugin-crasis.plugin.zsh.zwc crasis.zwc -zcrasis-process-buffer.zwc
	rm -rf zsdoc/data

.PHONY: clean
# vim:noet:sts=8:ts=8
