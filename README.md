# ASH
Ash is a compiled statically typed object oriented programming language targeted for the game development field.

## Contents
1. [Variable Definitions](#variable-definitions)
2. [Variable Accessing](#variable-accessing)
3. [Function Definitions](#function-definitions)
4. [Function Calls](#function-calls)
5. [Objects](#objects)
6. [Loops](#loops)
7. [Code Headers](#code-headers)
8. [BuiltIn Methods](#builtin-methods)
9. [BuiltIn Objects](#builtin-objects)
10. [Script Groups](#script-groups)
11. [Package Manager](#package-manager)
## Variable Definitions
A variable is defined using this order: 
```
<access_modifier(optional)> <modifiers(optional)> <type> <name> = <initializer(defaults to null)>
```
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
| const 	| Declares a variable<br>as unchangeable and<br>constant.	|
| static	| Declares a variable to be accessible without being part of an instance.	|
### Raw Type List
| Type		| Description |
| --------- | ---------   |
| dynamic	| A dynamic variable can hold any type. |
| char		| A character.	|
| string 	| A string of characters. |
| int 		| A number without decimals. |
| uint 		| A non-negative number<br>without decimals. |
| decimal 	| A number with decimals. |
| bool 		| Can only contain true/false as a value. |

A type can also be any object created in the language, for example `GraphicsWindow window = GraphicsWindow();` would be valid code. If you follow up a type with `[]`, it will become an array, able to hold multiple values of the same type.
## Variable Accessing
You access a variable by simply typing it's name, you can then access sub-properties such as child objects and methods from the object by seperating it  with a dot which could look like this:
```
someVar.subProp.ToString();
```
## Function Definitions
A function is a callable object which can execute code and return a value, a function declaration looks like this:
```
<access_modifier(optional)> function <name> <return_type(optional)> (<parameters>)
{
	<code>
}
```

You return something out of a function by using the `return`  keyword followed by the value you wish to return, this value can be anything if there is no return type else it has to follow it.
## Function Calls
You call a function by entering it's name followed by brackets containing the arguments which could look like this: ```SomeFunction("string", 9u, 11.23);```
## Objects
An object is a container for other pieces of code, which can be used as a type.
### Classes
A class is basically just a collection of code, you can write inside of a class just like you would write outside of a class, this is because on startup, your file will automatically be wrapped inside a class, meaning they are virtually the same. This is how you declare a class:
```
<access_modifier(optional)> <modifiers(optional)> class <class_name> optional(of <base_class>) {
	//Declare vars, functions and constructor here.
}
```
#### Constructor
A constructor gets called whenever you create a new class, inside of it can be coded just like in any other function, only difference being how you declare it, this is how to declare a constructor.
```
<access_modifier(optional)> <modifiers(optional)> <class_name>(<arguments(optional)>) {
	//Code here
}
```
### Structs
A struct can only contain values and no functions (except for the constructor), a typical struct definition would look like this:
```
<access_modifier(optional)> <modifiers(optional)> struct <struct_name> optional(of <base_struct>) {
	//Declare vars and constructor here.
}
```
#### Constructor
A constructor gets called whenever you create a new class, contrary to a classes constructor which lets you do whatever, a structs constructor requires you to initialize all the values of the struct inside of it (unless they are alreay initialized).
```
<access_modifier(optional)> <modifiers(optional)> <struct_name>(<arguments(optional)>) {
	//Declare vars and constructor here.
}
```
### Enums
An enum can contain multiple values, each of them displayed with just a name, these values can also be converted into ordinals starting from 0.
```
<access_modifier(optional)> enum <enum_name> {
	VALUE_1,
	VALUE_2,
	DIFFERENT_NAMED_VALUE,
	etc.
}
```
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
	if (i == 2) Print(2);
	if (i == 7) Print("Done");
}
```
A for loop can be stopped at any time using `break`or continue to the next iteration using `continue`.

### Foreach Loop
A foreach loop will loop through the contents of an iterable until it reached the end of it. A demonstartion of this would be:
```
int[] array = {1, 2};

foreach(element in array) 
{
	Print(element);
}
```
Just like a for loop, this one can be stopped using `break` or continued to the next iteration using `continue`.

## Code Headers
Code Headers are the rules a script or a group has to follow, they are always defined at the very top of the script using this syntax: `#<code-header> <parameters>`.
### Code Header List
| Header	| Effect	|
| --------- | --------- |
| disable-null	| Disables that every<br> variable can be of value<br> null, instead forces you<br> to use a "?" after the type<br> to declare it nullable.
## BuiltIn Methods
BuiltIn Methods are methods which are built into the language without any extra package.
| Name	| Effect	| Returns	|
| ---------		| ---------	| ---------	|
| Print(dynamic value);	| Calls the values ToString method and <br> outputs the result to the screen. | null	|
| Clock(TimingMethod method);	| Will return the time since the program<br>has started in the entered timing method.	| decimal	|
## BuiltIn Objects
BuiltIn Objects are objects which are built into the language without any extra package.
| Name	| Description	| Type	|
| ------| ------	| ------	|
| TimingMethod	| The method used for time based events (MilliSeconds, Seconds, Minutes, etc.).	| Enum	|
| Color		| A simple enum containing multiple color values.	| Enum	|
## Script Groups
A script group is a file containing global standards for all scripts linked in the file, the first file being the entry pointm it uses the file extension `.ashg`, it can contain global [code headers](#code-headers) as well as global variables, it is structured like this: 
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
The package manager of Ash is called Lighter and is used to install user-made content from other people, a package will always have the file ending `.ashl` and can be installed using the `lighter i <package-name>` command, these packages can be accessed in your script like this: `use <package>`, installed packages will be contained in `packages.ltr`, and can be reinstalled in a new project by just running `lighter i`.
