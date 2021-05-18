; Demonstration:
#Include <SyntaxSugar>


String = Dates X20170523120123 Y20050423220133 Z20070523120123
Regex = Ogi)(?<Name>x|Y|z)(?<Number>\d+)
Matches := String.Match(Regex)

Matches.Msgbox()

Result := String.Replace( Regex, Func("ReplaceFunc") ).Msgbox()
; Do something with Result.

For Index, Match in Matches
	If Match.0.Contains("2005,2006,2007")
		Msgbox % "Date " Match.Name " was long ago."

ReplaceFunc(Match, CurrentMatches, String){
	FormatTime, TimeString, % Match.Number, dddd MMMM d, yyyy hh:mm:ss tt
	Return "`n" Match.Name ": [" TimeString "]"
}

