runtests := build/exec/runtests

.PHONEY: test
test: $(runtests)
	$< /bin/sh \
		--failure-file failures \
		--interactive \
		--timing

$(runtests):
	idris2 --build hello-idris-test.ipkg
