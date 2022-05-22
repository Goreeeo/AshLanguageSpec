# ASH
Ash is a compiled statically typed object oriented programming language targeted for the game development field.

## Contents
1. [Variable Definitions](#variable-definitions)
2. [Function Definitions](#function-definitions)
3. [Code Headers](#code-headers)
4. [Script Groups](#script-groups)
## Variable Definitions
A variable is defined using this order: `access_modifier <modifiers> type name = initializer(defaults to null)`.
Every single object in Ash is nullable, that can be disabled using the [code header](#code-headers) `disable-null` though, if that is the case every object which you want to be nullable needs to have a "?" added after their type.
### Access Modifier List
| Name		| Description |
| --------- | ---------   |
| public 	| Declares an object as<br>available to every object<br> holding a reference to it's parent.
| local 	| Declares an object as<br>available to every object containing<br> it, includes their parents parent object.
| private	| Declares an object as<br>unavailable to every object but<br> the one containing it.
### Modifier List
| Name		| Effect	 |
| --------- | ---------- |
| const 	| Declares a variable<br>as unchangeable and<br>constant.
### Raw Type List
| Type		| Description |
| --------- | ---------   |
| string 	| A string of characters. |
| int 		| A number without decimals. |
| uint 		| A non-negative number<br>without decimals. |
| decimal 	| A number with decimals. |
| udecimal	| A non-negative number with decimals. |
| bool 		| Can only contain true/false as a value. |

A type can also be any object created in the language, for example `GraphicsWindow window = GraphicsWindow();` would be valid code.
## Code Headers
Code Headers are the rules a script or a group has to follow, they are always defined at the very top of the script using this syntax: `#code-header <parameters>`.
## Script Groups
A script group is a file containing lobal standards for all scripts linked in the file, it uses the file extension `.ashg`, it can contain global [code headers](#code-headers) as well as global variables, it is structured like this: 
```
scripts:
	"script path",
	"another script path"
headers:
	"code-header <parameters>",
	"another-code-header <parameters>"
variables:
	"variable definition"
	"another variable definition"
```
