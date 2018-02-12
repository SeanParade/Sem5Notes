# Mobile Application II
# Week 1 Lecture 1

## Language
- check out syntax of Objective C
- using Swift for this course
- similar to typescript and javascript

## Textbooks
- iOS 9 Programming Fundamentals with Swift (2nd ed)
- use any version can find

## Grading
- 2 lab tests = 15% each
- 8 quizzes = total 20%
	- will be open the whole semester
- lab participation = 10% total
- group project = 40%

### Group Project
- week 4 - week 12
- instructions are posted on bb
- 3 ppl per team
- build a word game

#### Timeline
- groups by Februrary 10
- UI design as DOC or PDF by February 23 **in class**
- prototype presented **in class** March 29
- final submitted on bb by end of semester, present in lab

## Labs
- need to do on a mac computer
- need to come to open lab
- present at least partial work in lab to get participation grade

## Software
- Xcode
- allows you to add code in C to your project
	- not recommended

## Swift
- successor to C and objective-C
- evolving quickly (version 4 right now since 2 years ago)
- when looking for examples be careful because the syntax between versions is different

### Pros
1. Syntax
	- easy, similar to TypeScript
2. Interoperability
	- can run side-by- side with Objective C
3. Strong typing
	- compiler will catch bugs at compile time
4. Smart type inference
	- detect data types based on initial value
5. Auto- memory management

### Cons
1. fewer resources
2. OS compatibility
	- for apps running on iOS7 and higher
	- OSX 10.9 and higher

## Actual Code
- nil == null
- ? to mark value as optional
- handling exceptions:
	- test with if statements
- switches
	- can use integer values, textual values
- dictionaries
	- can get key and value at the same time

### functions
- func to declare
- can return mutliple functions from a function
```swift
func greet(name: String, day: String)-> String{
	return "some string greeting";
}


 greet("Bob", "Tuesday")
```
- can take variable number of arguments and return an array
- can be nested
	- can access all var declared in outer scope
- a function can take another function as argument

#### closures
- blocks of code that can be called later
- functions are a special case of closures
- has access to the var and functions available in the scope **upon creation**, even if closure is executed within a different scope
- when a type is already known, can skip type of params, return type or both

### Objects and Classes
#### Create a class
```swift
class Shape{
	var numSides = 0
	func simpleDescription()->String{
		return "A shape with \(numSides) sides."
	}
}
```
- use init to set up class when instance is created
	- like in python
- use deinit if you need to perform cleanup before object is deallocated

#### Create a instance
```swift
var shape = Shape()
shape.numSides = 7

```

#### Subclasses
- superclass name after class name with colon
	- SubClass : SuperClass
- methods that override marked with **override**

### Structures
- similar to classes
- how they manage memory is different
- structures are always copied when they are passed
	- classes are passed by reference
- useful if you want to separate param from what pays in function


### Protocols
- similar to interface / abstract class
- blueprint of methods, props, other requirements
- keyword **protocol**
- **mutating func**
	- this method can modify the instance it belongs to
	- normally methods should not do this
- classes, enums, structs can adopt protocols

### Extensions
- extend existing classes to add new methods

### Generics
- properties defined through the protocol
- where after type name to specify list of requirements

