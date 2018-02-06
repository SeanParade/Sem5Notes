# Mobile Application Development II
## Week 2

### Access Levels Rules
- no entity can contain an entity with a lower access level
- e.g. public variable cannot be defined as having an internal, file-private or internal type
- function cannot have a higher access level than param types and return type

### Access Levels
1. Open Access and Public Access
	- used within any source file from defining module
	- used in a source file from another module that imports defining module
	- e.g. specifying public interface to a framework
2. Internal Access
	- used within any source file from defining module
	- not any source file outside defining module
	- e.g. defining app's or framework's internal structure
3. File-private access
	- restrics use to own source file
	- hide implementation of details of specific functionality 
	- used when details are in entire file
4. Private access
	- restricts use of entity to the enclosing declaration
	- hide implementation details of a specific functionality
	- used when details are only used within single declaration

### Access Levels Table


|	| **Open Access/ Public Access**   | **Internal Access**  | **File-Private**   | **Private**   |
|---|---|---|---|---|
| **within declaration**  | X  | X  | X  | X  |
| **within source file**  | X  | X  | X  |   |
| **within defining module**  | X  | X  |   |   |
| **from another module that imports  def. module**  | X  |   |   |   |

#### Default
- default access level = internal
- defining a type's access level as private or file-private
	- the access level of members will be private or file-private
- definining internal and public
	- default internal
- public
	- default internal members
	- type members must be explicitly marked as public

#### Syntax

```swift
//classes
public class SomePublicClass{}
internal class SomeInternalClass{}
fileprivate class SomeFilePrivateClass{}
private class SomePrivateClass{}

//entities
public var somePublicVariable = 0
internal let someInternalConstant = 0
fileprivate func someFilePrivateFunction(){}
private func somePrivateFunction(){}
```

#### Static vs Global
- **Global**
	- lazy?
	- initializes when other code first refers to global
	- protected by dispatch_once
- **Static**
	- behave like global variables

```swift
//lazy initialization
lazy var arrow: UIImage = self.arrowImage()
``
- doesn't initialize until the variable is called
- utilize memory only when needed
- must use **var** not **let**
	- constants must always have a value

### Functions
#### void Functions
```swift
func say1(s:String) -> Void { print(s)}
func say2(s:String) -> () { print(s)}
func say3(s:String) { print(s)}

```
#### Returning Multiple Values
```swift
func minMax(array: [Int]) -> (min: Int, max: Int) {
	//implementation here
	
	return (currentMin, currentMax)
}
```

#### Argument Labels, Param names, Default Values
- **Argument Label** : used when calling the function
- **Parameter name** : used in implemetation of function
- by default parameters use param name as argument label

```swift
//specify argument label
func someFunction(argumentLabel parameterName: Int){
	//use paramerter Name
}
//call
someFunction(argumentLabel: 0)

//omit argument label
func someFunction( _ firstParameterName: Int, secondParameterName: Int)
{
	//use firstParameterName and secondParameterName
}

//call
someFunction(1, secondParameterName: 2)

//default parameters
func someFunction(parameterWithoutDefault: Int, parameterWithDefault: Int = 12) {
	//if you omit second argument when calling this function
	// the default will be 12
}
//call
someFunction(parameterWithoutDefault: 3)
```
#### In-out Parameters
- function params are constant by default
- in-out param to be able to modify parameters value
- can only pass a variable
- pass a & before var name when passing as an argument
- **cannot have default values**
- **variadic params can not be marked as in-out**

```swift
//inout
func swapTwonts(_ a: inout Int, _ b: inoutInt){
 let temporaryA = a
a = b
b = temporaryA
}

//call
var someInt = 4
var anotherInt = 107
swapTwoInts(&someInt, &anotherInt)

```

#### Variadic parameters
- can supply as many values of parameters type as required
- separated by a comma
- will receive as an array
- **constraint** function can declare a **maximum of one variadic parameter**

```swift
func sayString(arrayOfStrings:String..., times:Int)
{
	for _ in 1...times{
	 for s in arrayOfStrings{ print(s) }
	}
}
```

#### Ignored Parameters
- parameter whos local name is an underscore
- is ignored
- caller must supply argument
- cannot be referred to in the function body
- e.g. used when you're overriding a superclass function but don't need one of the params
- e.g. you're calling a function with mulitple return values but you don't care about one of the values

```swift
func say(s:String, times:Int, loudly _:Bool){}

```

#### Nested Functions
- hidden from outside world
- can be called by enclosing function
- enclosing function can return a nested function to be used in another scope

#### Custom Operators
- can define own custom operators
- e.g. ++
- prefix: before
- postfix: after
- infix: between 

#### Overloading Functions
- can use two functions with exact same name as long as they have different signatures

```swift
func say (what: String){}
func say (what: Int) {}
func say()-> String { return "One" }
func say()-> Int { return 1 }

//call must disambiguate
let result:Int = say()
```
