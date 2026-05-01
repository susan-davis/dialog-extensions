# dialog-extensions
Useful extensions for the Dialog domain-specific Interactive Fiction language. These are mostly code-oriented, rather than player-facing, and can be quietly dropped in behind the scenes to simplify your code. Unit tests are provided for all of them, in the corresponding file ending in `-tests.dg`; running `make test` will run them all.

These extensions are written for Dialog 1a/01 and later, and aren't guaranteed to work out-of-the-box on 0m/03 or earlier.

## Modules

`time.dg` -- Useful utilities for handling the date and time of day.

`dice.dg` -- `UNDO`-safe random number generator, based around fair rolls with good randomness stored in a table. Uses an extra 446 bytes, plus code size.

`dice-lite.dg` -- Smaller footprint version of `dice.dg` for vintage hardware.

`d6.dg` -- Simplified version of `dice.dg` for games that only need six-sided dice. Uses an extra 446 bytes, plus code size.

`d6-lite.dg` -- Smaller footprint version of `d6.dg` for vintage hardware.

`utils.dg` -- Grab bag of useful methods for arithmetic and list handling.

`grid.dg` -- Implement grid movement in a large open space.

`unit.dg` -- Standard Dialog unit testing framework. Get this from the Dialog source distribution for the most up-to-date version.

`stdlib.dg` -- Dialog standard library. Get this from the Dialog source distribution for the version that matches the compiler that you're using.

`Makefile` -- Run `make` to run the unit tests.

## Building
This is a library of source code. Simply include the files in your own projects, and you're done. You can run the unit tests with `make`, if desired.
