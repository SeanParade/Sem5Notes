# COMP3097
#### Week 3
Mon Feb 12 14:06:59 STD 2018

___

### Objects
- object types are declared with the flavor of the object type (enum, struct, class), the name of the object type, and then curly braces
- object types declared at the top level of a file will be visible to all files in your project.
- declaration of a file type inside the declartion of another type dpends on the access level of both types.
- object type declared in the body of the function are only visible to that scope.
#### Declaration
- Initializers = constructor methods
  - uses `self.parameter` when assigning values to variables
  - Can be "failable" (returns empty) 
  ```Swift 
     init!(name:String, license:Int){...
	 //error cases
	 if name.isEmpty {
    	 return nil
	 }
	 if license <= 0 {
	     return nil
	 }
  ```

### Classes
- Properties have a fixed type
  - can be declared with var or let
  - can be stored or computed
  - can have setter observer (notified that the variable will be / has been changed)
  - instance property can be lazy
- observers
  - `willSet` is called just before value is changed
  - `didSet` is called just after
  ``` Swift
     var totalSteps: Int = 0 {
	   willSet(newTotalSteps){
	     print("About to change totalSteps to \(newTotalSteps)")
	   }
	 }
  ```
- Initializing var with other class var/let
  - `var byTwo : Int { return self.number / 2 }`
  - can use a combination of lazy and computed initialization
  
- similar to a struct, except
 - are reference types
   - mutability
   - multiple Inheritance

#### Class v Struct
- instance declared with let can change values of its properties while struct instance declared the same way cannot

### Structures
- Subscripts are weird and I don't understand them.
- subscripts let you access a specific place in the structure and replace its value with the new value (same as array)
- Weak and strong references
 - Strong
  - `john` has apartment `unit4a`, and `unit4a` has tenant `john` 
  - possible with optionals (`Apartment?`) and declaring one of the references as `weak`
  - All variables are strong by default
- Weak
  - `weak var tenant: Person?`

### Enumeration
- Named integers
- can construct a case whose conatant value can be set when the instance is created.
- can have instance and static properties and methods
- methods can depend on the actual case (instance of the enum)

### Struct
- nearly all the builts in object types provided by swift are structs
- copied in the function calls
- can have properties and methods
- can be used to group ....

### CLosures
- Self-contained blocks of functionality
- essentially an anonymous function
- can be stored
- can access anything in there scope
- have serveral shorthands, though they typically make code less readable

### Collections
#### Map
- used to loop over a collection and apply the same operation to each element in the collection
```Swift
let values = [2,4,5,7]
let squares = values.map {$0 * $0}
// squares = [4,16,25,49]
```

#### Filter
- used to loop over a collection and return an Array containing only those elements that match an included condition

#### Reduce
- used to combine all items in a collection to create a single new value.


### Review
- use question mark to say a value can be nil (optional)
- use exclamation mark to demand an optional to be unwrapped
  - i.e. I know this has a value, give me the value.
  - comes directly after the variable (no space)
- lazy initialization waits until it is being called to initialize
