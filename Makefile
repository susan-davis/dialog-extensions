all: test 

DEBUG=dgdebug -u
STDLIB=unit.dg stdlib.dg

test: utils time 3d6

utils:
	$(DEBUG) utils-tests.dg utils.dg $(STDLIB)

time:
	$(DEBUG) time-tests.dg time.dg $(STDLIB)

3d6:
	$(DEBUG) 3d6-tests.dg 3d6.dg utils.dg $(STDLIB)

3d6-lite:
	$(DEBUG) 3d6-lite-tests.dg 3d6-lite.dg $(STDLIB)

3d6-extra:
	$(DEBUG) 3d6-lite-tests.dg 3d6.dg utils.dg $(STDLIB)

clean:
	rm -f *~ \#*\# *.z8 *.zblorb *.aastory *.d64 *.d71

.PHONY: test all clean utils time 3d6
