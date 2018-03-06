# Mobile App Development II
## Week 3
- Objects:
	- classes
	- structures
	- enums
- Map, Filter, Reduce
	- process collections without loops
	- closures

### Obkect Types
```swift

class Manny { }
class Moe { ]
enum Jack { }

```
- start with a capital letter
- curly braces

#### Object Visibility
- if declared at top level of the file **will be visible to all files in module**
- declaration of one inside another, depends on access level
- object declared within body of a function will only exist inside the scope of the surrounding braces

#### Content
- Initializers
	- constructors
- Properties
	- static/ class vars
- Subscripts
	- instance method called by appending **square brackets** to an instance ref
- Object type declarations
	- nested type declaration

#### Delegating Initializer
```swift

struct Digit {
	var number : Int
	var meaningOfLife : Bool
	init (number:Int) {
		self.number = number
		self.meaningOfLife = false
	}
	init(){
	//delegating initializer
	self.init(number:42)
	self.meaningOfLife = true
	}
}
```
- must have different signature

#### Failable Initializers
- return an **Optional** wrapping new instance
	- nil can be returned to signal failure
- to mark an initializer as failable:
	- *question mark* after keyword init
	- OR for **implicitly unwrapped Optional** an *exclamation mark*

``` swift
class Dog {
	let name : String
	let license : Int
	init! (name:String, license:Int){
		self.name = name
		self.license = license
		if name.isEmpty{
			return nil
		}
		if license <= 0 {
			return nil
		}
	}
}
```

#### Properties
- fixed type
- declare with var or let
- stored or computer
- can have **setter observers**
- can also be declared **lazy**

##### Observers
- observe and respond to changes in a property value
- called every time property value is set
- **willSet** : before value is stored
- **didSet** : immediately after new value is stored

```swift
//let
class ByTwo {
	let number = 148
	let byTwo = self.number / 2 //compile error
}

//var
class ByTwo{
	let number = 148
	var byTwo : Int {
		return self.number / 2
	}
}

//lazy
class ByTwo {
	let number = 148
	lazy var byTwo = self.number/2
}
```

#### Subscripts
- instance method called in a special way
- append square brackets to an instance ref
- can contain args to be passed to subscript ref
- use when object type with elements accessed by key or index

```swift
struct Digit {
	var number : Int
	init (_ n:Int) {
		self.number = n
	}
	
	subscript(ix:Int) -> Int {
		get {
			let s = String(self.number)
			let c = String(Array(s.characters)[ix])
			return Int(c)!
		}
	}
}

var d = Digit(145)
print(d[5])
```

- can be used as a **mutator**
- can access specific element and modify it

### Weak VS Strong references

```swift
//strong
class Person {
	let name: String
	init (name: String) { self.name = name }
	var apartment: Apartment?
	deinit { print ("\(name) is being deinitialized") }
}

//weaak
class Apartment {
	let unit: String
	init(unit: String) { self.unit = unit }
	weak var tenant: Person?
	deinit { print ("Apartment \(unit) is being deinitialized") }	
}
	
}
```

#### Enum
- object type whose instances represent distinct predefined alt values

```swift
enum Filter : String {
	case Albums = "Albums"
	case Playlists = "Playlists"
	case Podcasts = "Podcasts"
	case Books = "AudioBooks"

	static var cases : [Filter] = [Albums, Playlists, Podcasts, Books]
	init(_ ix: Int) {
	//can also be failable
		self = Filter.cases[ix]
	}
}

let type = Filter.Albums
//or
let type2 : Filter = .Albums


let type3 = Filter(2) 
```
- can have instance and static properties and methods
- can depend on which case

#### Struct
- copied in function calls
- can have instance and static props and methods
- can use to group constants
- methods that modify instance are marked **mutating**

##### Classes VS Structs
- classes:
	- mutability
	- multiple references
	- inheritance
	- instance declared with **let** can change values of properties

### Closures
- self contained blocks of functionality
- can capture and store references to any constants and vars from the context they are defined in
- **closing over** those constants and variables
- can be stored in vars or passed as parameters
- shorthands"
	- type inference
	- params ($0, $1)

### Collections Processing
- Map
	- loop over a collection and apply same operation to each elem
- FIlter
	- loop over collection and return an Array
	- contains only elem that match the condition
- Reduce
	- combine all items in a collection to create single value

```swift
//map
let values =
	[2.0, 4.0, 5.0, 7.0]
let squares =
	values.map {$0 * $0}
// [4.0, 16.0, 15.0, 49.0]

// filter
let digits =
	[1, 4, 10, 15]
let even = digits.filter({$0 % 3 == 0})
// [4,10]

//or
let even2 = digits.filter{$0 % 2 == 0}

//reduce
let items = [2.0, 4.0, 5.0, 7.0]
let total = items.reduce(10.0, +)
// 28.0

let names = ["alan", "brian", "charlie"]
let csv = names.reduce("==") {text, name in "\(text), \(name)"}

// "==, alan,brian, charlie"
```