# COMP3097
#### Week 1
Mon Jan 29 14:10:41 STD 2018

___

### Intro
- Using swift instead of Objective-C
- 8 quizzes
- 2 lab tests
- course info on blackboard
- Project
  - group assignment
  - puzzle game or restaraunt/wine (list) tracker
  - Groups submitted by Feb 10
  - Prototype due March 29
  
### Swift 

- Very similar to TypeScript
- successor to C and Objective-C langs
- readable
- can be run side-by side with objective-c in the same project
- strong typing
- smart type inference 
  - typing can be skipped in most cases
- auto memory management
- iOS 7+ / OSX 10.9+
- parentheses around the condition or loop variable are optional
- braces are mandatory
- functions can return tuples
- functions can take a differnt numbers as variables
- functions can be nested
- functions are first class citizens
- functions can take other functions as parameters
- no garbage collection
- structs can be used like objects but the are always passed as a copy
- protocols define blueprint of methods, properties and other requirements that suit a particular task or piece of functionality
- protocols mimic abstract classes
- classes, enumerations, and structs can implement protocols
- Extensions add functionality to an exisiting class (new methods, computed properties, etc)
- generics use <T> but you can add letters to add different types <T, U>


```swift
// hello world
println("Hello World")

/////

var myVar = 42
myVar = 50
// let is always keyword for a constant
let myConstant = 42
let label = "The width is "
let width = 4
let widthLabel = label + String(width) //String() is a a new object given the value of width
let innerString = "Let me tell you about my width: \(widthLabel)"

// dictionary
var occupations = [
	"Malcolm": "Captain",
	Kaylee": "Mechanic",
]

oocupations["Malcom"] = "Captain"

let emptyArray = [String]()
let emptyDiction [String: Float]()
shoppingList = []
occupations = [:]

let null = nil // nil is the null keyword ( don't actualy do this >:| )

// defining object type
var optionalString: String? = "hello"

// optionals
if let name = optionalName {
  greeting = "Hello, \(name)"
}

// function definition
 func greet(name: String, day: String) -> String {
	return "Hello \(name), today is \(day)."
 }

greet("Bob", "Tuesday")

// can return tuples
func calculateStatistics(scores: [Int]) -> (min: Int, max: Int, sum: Int){
	//... 
	
	return (min, max, sum)
}

// constructor (init function)
// every non optional property needs a value assigned 
init (name: String) {
	self.name = name
}

// getter setter
var perimeter: Double{
	get:{
	return 3.0 * sideLength
	}
	set(peri: Double):{
		self.perimeter = peri
	}



```

