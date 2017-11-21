# Mobile Application Development
## Lecture 7
### (Resuming Class After the Strike)
#### Revised Schedule for the Course
- Assignments: A1, A2 = 30%
- Group Project = 40%
- Final = 30%
  - Delivery of all work will be on Blackboard

#### Data and Storage APIs
- Application Preferences
- SQLite databases
- Files and Directories
- Cache
- FireBase *keep in mind for Capstone project

##### Shared Preferences
- stored as Key/Value pairs
- Data Types
  1. Boolean
  - float
  - integer
  - long
  - String
- Can store Data Structures, but there is limited storage

##### Challenge
- Storing and accessing data quickly
- Solution: Use Hashed Structures
  - Dictionary
    - Collection<Key, Value>
    - Key = identifier of data
    - Value = value
- More complicated types, must break down into properties

#### How to Add Preferences
1. Instantiate a SharedPreferences object
- Create SharedPreferences.Editor to modify pref. content
  - "Strategy Pattern"
- Make changes
- Commit the changes
- Retrieve Private References

  ```java
  //retrieve private preferences
  Shared Preferences settingsActivity =
		  getPreferences(MODE_PRIVATE);
```
- the constructor is private because the item has a lot of parameters
- prone to programming errors, to avoid these errors:
  - provides this method that calls the constructor of the class

##### Shared Preferences
- must name preference set
- use a different method

```java
//retrieve shared preferences
SharedPreferences settings =
		  getSharedPreferences("MyCustomSharedPreferences", 0);
```

##### Editor: Adding, Updating, Deleting
- Editor is an object that provides methods for adding, updating, deleting

```java
//instantiate the editor
SharedPreferences.Editor prefEditor = settingsActivity.edit();

//add to the preferences
prefEditor.putLong("SomeLong", 
			       java.lang.LONG.MIN_VALUE);
//commit the changes
prefEditor.commit();
```

#### Defining Prefernces in XML
- mapping 1:1 screen components
- addPreferencesFromResource(R.xml.myappprefernces);

#### Preference Fragment
- developing for Android 3.0 and higher, should use PreferenceFragment to display the preferences

#### SQLite Databases
- sqlite3 command-line tool accessible through ADB shell interface
- this week we will continue with this, updating a database, adding more tables, columns, etc.
- one database is a single file
- Singleton Pattern:
  - object and database will be unique
  - must have only one reference for consistency
- in Java you don't use direct SQL, you embed it in a Java Statement

#### Transactions
- group operations togetherm handle error and roll back operations
- beginTransaction, setTransactionSuccessful, endTransaction
- try, catch, finally
- transaction should not be lost
  - "journaling"
    - declare series of operations:
    - either success, or all rejected
