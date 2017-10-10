current_dir = $(notdir $(shell pwd))

test: script zshrc zshrc.result ../data
	cd .. && ./bin/runtest.zsh $(current_dir)
	cd .. && diff $(current_dir)/zshrc.result $(current_dir)/zshrc.test

test%: ../_test%/zshrc ../_test%/script ../data
	cd .. && ./bin/runtest.zsh _$@
	cd .. && diff _$@/zshrc.result _$@/zshrc.test

../data:
	make -C .. prepare

clean:
	rm -f zshrc.test

.PHONY: test clean
