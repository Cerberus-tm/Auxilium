 ; Demonstration:
#Include <SyntaxSugar>


String = Dates X20170523120123 Y20050423220133
Regex = Ogi)(?<Name>x|Y)(?<Number>\d+)
Match := String.Match(Regex)

Match.Msgbox()

String.Replace( Regex, Func("ReplaceFunc") ).Msgbox()

ReplaceFunc(Match, CurrentMatches, String){
	FormatTime, TimeString, % Match.Number, dddd MMMM d, yyyy hh:mm:ss tt
	Return Match.Name ": [" TimeString "]"
}

