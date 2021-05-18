# Auxilium
Syntax sugar for Autohotkey: you can treat strings as objects, and use a few extra methods on normal arrays and objects.

You can do e.g. `"Hello".Match("g)l").Msgbox()` or `"Hello Mr".Split(" ").Msgbox()`.

Current version is alpha (it seems to work for me without problems, but I might want or need to change substantial things).

## Installation:
Put the files `SyntaxSugar.ahk` and `ObjectToString.ahk` in your `Lib` folder (e.g. `...\Program Files\Autohotkey\Lib\`).

You can run the file `Demonstration.ahk` anywhere to test the library.
