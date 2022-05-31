
| Function		| Effect	| Returns	|
| --------			| --------- | --------- 	|
| OutLine(Color color = ConsoleColor.Current, <br>Color bg = ConsoleColor.Background)		| Basically [Print()](https://github.com/Goreeeo/AshLanguageSpec/blob/main/README.md#builtin-methods) but expanded with more options.	| null	|
| Out(Color color = ConsoleColor.Current, <br>Color bg = ConsoleColor.Background) 	| Same as OutLn() but doesn't create a new line. 	| null	|
| ReadLine()	| Reads the next line of user input.	| string	|
| Read() 			| Reads the next character of user input.	| char	|
| ConsoleColor.SetColor(Color color) 	| Sets the ConsoleColor.Current value to the new color.	| null	|
| ConsoleColor.SetBGColor(Color color)	| Sets the ConsoleColor.Background value to the new color.	| null	|

| Object	| Description	|
| --------- | --------- |
| ConsoleColor	| A static class containing values like the current console color and background color.	|
