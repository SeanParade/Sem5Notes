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

  
### Structures

### Enumeration

### Map

### Filter

### Reduce


### Review
- use question mark to say a value can be nil (optional)
- use exclamation mark to demand an optional to be unwrapped
  - i.e. I know this has a value, give me the value.
  - comes directly after the variable (no space 
