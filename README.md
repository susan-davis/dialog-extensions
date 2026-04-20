# dialog-extensions
Useful extensions for the Dialog domain-specific Interactive Fiction language.

## Modules

`time.dg` -- Useful utilities for handling the date and time of day.

`dice.dg` -- `UNDO`-safe random number generator, based around rolling six-sided dice.

`dice-lite.dg` -- Smaller footprint version of `dice.dg` for vintage hardware.

`utils.dg` -- Grab bag of useful methods for arithmetic and list handling.

`grid.dg` -- Implement grid movement in a large open space.

`unit.dg` -- Standard Dialog unit testing framework. Get this from the Dialog source distribution for the most up-to-date version.

`stdlib.dg` -- Dialog standard library. Get this from the Dialog source distribution for the version that matches the compiler that you're using.

`Makefile` -- Run `make` to run the unit tests.

## Building
This is a library of source code. Simply include the files in your own projects, and you're done. You can run the unit tests with `make`, if desired.
