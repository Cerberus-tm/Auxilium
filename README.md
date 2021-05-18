# Auxilium
Syntax sugar for Autohotkey: you can treat strings as objects, and use a few extra methods on normal arrays and objects.

You can do e.g. `"Hello".Match("g)l").Msgbox()` or `"Hello Mr".Split(" ").Msgbox()`.

The `.Replace()` method accepts function objects, like `Result := String.Replace("gi)hello", Func("MyReplacementFunc"))` (see `Demonstration.ahk`). Both Match and Replace use regular expressions.

You can use the "global" flag `g` to get all matches from a string.

Current version is alpha (it seems to work for me without problems, but I might want or need to change substantial things).

## Installation:
Put the files `SyntaxSugar.ahk` and `ObjectToString.ahk` in your `Lib` folder (e.g. `...\Program Files\Autohotkey\Lib\`).

You can run the file `Demonstration.ahk` anywhere to test the library.
