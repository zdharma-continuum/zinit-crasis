all: test

test: prepare test1 test2 test3 test4 test5

prepare: ../crasis ../-zcrasis-process-buffer
	cp ../crasis ../-zcrasis-process-buffer .
	rm -rf data
	./bin/zsd-transform -q crasis
	mv zsdoc/data .
	rm -rf zsdoc
	./bin/get-body-part.pl > data/test_body

test%: _test%/zshrc _test%/script
	./bin/runtest.zsh _$@
	diff _$@/zshrc.result _$@/zshrc.test

clean:
	rm -rf -- data zsdoc crasis -zcrasis-process-buffer
	rm -f _test*/zshrc.test

.PHONY: all test prepare clean
