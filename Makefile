all: test 

DEBUG=dgdebug -u
STDLIB=unit.dg stdlib.dg

#add d6-lite
test: utils time dice dice-lite d6 grid

utils:
	$(DEBUG) utils-tests.dg utils.dg $(STDLIB)

time:
	$(DEBUG) time-tests.dg time.dg $(STDLIB)

dice:
	$(DEBUG) dice-tests.dg dice.dg utils.dg $(STDLIB)

dice-lite:
	$(DEBUG) dice-lite-tests.dg dice-lite.dg utils.dg $(STDLIB)

d6:
	$(DEBUG) d6-tests.dg d6.dg utils.dg $(STDLIB)

d6-lite:
	$(DEBUG) d6-lite-tests.dg d6-lite.dg utils.dg $(STDLIB)

grid:
	$(DEBUG) grid-tests.dg grid.dg utils.dg $(STDLIB)

clean:
	rm -f *~ \#*\# *.z8 *.zblorb *.aastory *.d64 *.d71

.PHONY: test all clean utils time dice dice-lite dice-extra
