all: test

test: prepare test1 test2 test3 test4 test5

prepare: ../crasis ../-zcrasis-process-buffer
	cp ../crasis ../-zcrasis-process-buffer .
	rm -rf zsdoc
	./bin/zsd-transform -q crasis
	./bin/get-body-part.pl > zsdoc/data/test_body

test%: _test%/zshrc _test%/script
	./bin/runtest.zsh _$@
	diff _$@/zshrc.result _$@/zshrc.test

clean:
	rm -rf -- zsdoc crasis -zcrasis-process-buffer
	rm -f _test*/zshrc.test

.PHONY: all test prepare clean
