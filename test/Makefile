all: test

test: test1 test2 test3 test4 test5 test6 test7 test8

prepare: ../crasis ../-zcrasis-process-buffer
	cp ../crasis ../-zcrasis-process-buffer .
	rm -rf data
	./bin/zsd-transform -q crasis
	mv zsdoc/data .
	rm -rf zsdoc
	./bin/get-body-part.pl > data/test_body

test%: _test%/zshrc _test%/script data
	./bin/runtest.zsh _$@ "$(VERBOSE)" "$(DEBUG)"
	if [ "$(NODIFF)" = "" -a ! -f _$@/skip ]; then diff _$@/zshrc.result _$@/zshrc.test; exit $$?; fi
	@echo

data: ../crasis ../-zcrasis-process-buffer
	make prepare

clean:
	rm -rf -- data zsdoc crasis -zcrasis-process-buffer
	rm -f _test*/zshrc.test _test*/*.txt

.PHONY: all test prepare clean
