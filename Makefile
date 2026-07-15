all: test

COMPILE=dialogc -t z5

DEBUG=dgdebug -u
STDLIB=utils.dg unit.dg stdlib.dg

test: utils time dice dice-lite d6 d6-lite grid bearing grid-movement

utils:
	$(DEBUG) utils-tests.dg $(STDLIB)

time:
	$(DEBUG) time-tests.dg time.dg $(STDLIB)

dice:
	$(DEBUG) dice-tests.dg dice.dg $(STDLIB)
	$(DEBUG) dice-lite-tests.dg dice.dg $(STDLIB)

dice-lite:
	$(DEBUG) dice-lite-tests.dg dice-lite.dg $(STDLIB)

d6:
	$(DEBUG) d6-tests.dg d6.dg $(STDLIB)
#	$(DEBUG) d6-lite-tests.dg d6.dg $(STDLIB)

d6-lite:
	$(DEBUG) d6-lite-tests.dg d6-lite.dg $(STDLIB)

grid:
	$(DEBUG) grid-tests.dg grid.dg $(STDLIB)

bearing:
	$(DEBUG) bearing-tests.dg bearing.dg grid.dg $(STDLIB)

grid-movement:
	$(DEBUG) grid-movement-tests.dg grid-movement.dg grid.dg $(STDLIB)

clean:
	rm -f *~ \#*\# *.z5 *.z8 *.zblorb *.aastory
	rm -rf web c64

.PHONY: test all clean utils time dice dice-lite d6 d6-lite
.PHONY: grid bearing grid-movement
