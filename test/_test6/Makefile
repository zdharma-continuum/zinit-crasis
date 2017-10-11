current_dir = $(notdir $(shell pwd))

test: script zshrc zshrc.result ../data
	cd .. && ./bin/runtest.zsh $(current_dir) $(VERBOSE)
	[[ "$(NODIFF)" = "" ]] && cd .. && diff $(current_dir)/zshrc.result $(current_dir)/zshrc.test || true
	@echo

test%: ../_test%/zshrc ../_test%/script ../data
	cd .. && ./bin/runtest.zsh _$@ $(VERBOSE)
	[[ "$(NODIFF)" = "" ]] && cd .. && diff _$@/zshrc.result _$@/zshrc.test || true
	@echo

../data: ../../crasis ../../-zcrasis-process-buffer
	make -C .. prepare

clean:
	rm -f zshrc.test

.PHONY: test clean
