## Save Changes
- entity is a template for the object
- person is the actual object

- get delegate
- get context
- fetch entities
	- fetch all objects made from entity "Person"
	- can create queries
		- e.g. get all objects from entity "Person" that have name ___
	- get an array of NSManagedObject
- more relations between entities = more complex
	- querying effectively can be an issue
	- limited capabilities to query the model
	- not as flexible as SQL

## SQLite
- single file
- relational database
- need more code checking consistency of data on app side
	- checking referential integrity is expensive

### Accessing the database
- need NSFileManager
	- set path of where database is stored
	- create a file for the database
- try to avoid opening db multiple times
	- causes an error

#### Insert
- executeUpdate() function
- returns nil on failure
- on success: returns integer: how many rows were affected by the query
	- do not return the result of the query
- can get a response using FMResultSet?
	- a ResultSet is a table

#### Parameters
- can add ? to query
- pass an array of parameters for the query
	- execute query with different options
	- reuse string and pass an array

#### ResultSet
- if results?.next
	- boolean

## Next
- Managed models
- Versioning of models
	- evolve data layer
- cumulative record of the methods
	- all changes have to be executed from previous versions
	- ie. if someones updating from 0->10
- don't drop the databases and re-create from new version
	
## For the lab
- next week: playing with databases in the lab
- will show us both options for databases
	- when to use what?
	- do you have multiple classes?
	- or data model is simple but have lots of objects
- take a look at the documentation on this stuff
- table view and sound next lab
