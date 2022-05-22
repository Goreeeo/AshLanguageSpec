# ASH
Ash is a compiled statically typed object oriented programming language targeted for the game development field.

## Contents
1. [Variable Definitions](#variable-definitions)
2. [Function Definitions](#function-definitions)
3. [Loops](#loops)
4. [Code Headers](#code-headers)
5. [Script Groups](#script-groups)
6. [Package Manager](#package-manager)
## Variable Definitions
A variable is defined using this order: `<access_modifier(optional)> <modifiers(optional)> <type> <name> = <initializer(defaults to null)>`.
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
| bool 		| Can only contain true/false as a value. |

A type can also be any object created in the language, for example `GraphicsWindow window = GraphicsWindow();` would be valid code.
## Function Definitions
A function is a callable object which can execute code and return a value, a function declaration looks like this:
```
function <name> <return_type(optional)> (<parameters>)
{
	<code>
}
```

You return something out of a function by using the `return`  keyword followed by the value you wish to return, this value can be anything if there is no return type else it has to follow it.
## Loops
A loop is a piece of code which repeats until a certain condition is met. There are three kind of loops in Ash. The "while", the "for" and the "foreach" loop. 
### While Loop
The while loop repeats a piece of code until the condition is met, it could look something like this:
```
int i = 0;
bool loop = true;
while (loop == true)
{
	i++;
	if (i >= 5) loop = false;
}
```
It can also be used for endless recursion by simply writing true as the condition or cancelled by using the `break` keyword.

### For Loop
A for loop will repeat until the integer defined in it's condition reaches the target, and at the end will execute the increment. An expample would be:
```
for (i = 1; (Define start amount.) i <= 7; (Stop when this target is reached.) i++ (Increment i by 1 after the loop.)
{
	if (i == 2) print 2;
	if (i == 7) print "Done";
}
```
A for loop can be stopped at any time using `break`or continue to the next iteration using `continue`.

### Foreach Loop
A foreach loop will loop through the contents of an iterable until it reached the end of it. A demonstartion of this would be:
```
int[] array = {1, 2};

foreach(element in array) 
{
	print element;
}
```
Just like a for loop, this one can be stopped using `break` or continued to the next iteration using `continue`.

## Code Headers
Code Headers are the rules a script or a group has to follow, they are always defined at the very top of the script using this syntax: `#<code-header> <parameters>`.
### Code Header List
| Header	| Effect	|
| --------- | --------- |
| disable-null	| Disables that every<br> variable can be of value<br> null, instead forces you<br> to use a "?" after the type<br> to declare it nullable.
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
package_dir: "package directory"
```
## Package Manager
The package manager of Ash is called Lighter and is used to install user-made content from other people, a package will always have the file ending `.ashl` and can be installed using the `lighter i <package-name>` command, these packages can be accessed like this: `use <package>`.
