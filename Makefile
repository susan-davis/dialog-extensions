all: test 

DEBUG=dgdebug -u
STDLIB=unit.dg stdlib.dg

test: utils time dice dice-lite

utils:
	$(DEBUG) utils-tests.dg utils.dg $(STDLIB)

time:
	$(DEBUG) time-tests.dg time.dg $(STDLIB)

dice:
	$(DEBUG) dice-tests.dg dice.dg utils.dg $(STDLIB)

dice-lite:
	$(DEBUG) dice-lite-tests.dg dice-lite.dg utils.dg $(STDLIB)

dice-extra:
	$(DEBUG) dice-lite-tests.dg dice.dg utils.dg $(STDLIB)

clean:
	rm -f *~ \#*\# *.z8 *.zblorb *.aastory *.d64 *.d71

.PHONY: test all clean utils time dice dice-lite dice-extra
