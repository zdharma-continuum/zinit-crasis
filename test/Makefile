all: test

test: prepare test1

prepare: ../crasis ../-zcrasis-process-buffer
	cp ../crasis ../-zcrasis-process-buffer .
	rm -rf zsdoc
	./zsd-transform -q crasis
	./get-body-part.pl > zsdoc/data/test_body

test1: test1/zshrc test1/script
	./runtest.zsh test1
	diff test1/zshrc.result test1/zshrc.test

clean:
	rm -rf -- zsdoc crasis -zcrasis-process-buffer
	rm -f test1/zshrc.test

.PHONY: all prepare test1 clean
