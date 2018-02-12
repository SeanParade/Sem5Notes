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
	 if name.isEmpty{
    	 return nil
	 }
	 if license <= 0 {
	     return nil
	 }
  ```
  - 

### Classes
- 
### Structures

### Enumeration

### Map

### Filter

### Reduce
