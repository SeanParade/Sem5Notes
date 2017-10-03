# Mobile Application Development
## Week 5 Lecture
## SQLite operations

### Assignment Questions
- java classes under java> package name
- extension for assignment? possibly

### Today's Lecture
- SQLite used for databases in Android Studio	
  - DBMS
  - create database 
  - create schema (set of tables)
  - database stuff done through java
- don't see database file on Android Studio
  - gets (initialized?) on the device 
- Versions of databases:
  - the database undergoes changes, different users have
different versions of the database based on when they download,
need to  --

#### Database Helper Class: extends SQLiteOpenHelper
- runs once when app opens

#### Creating a database for your app:
1. Add new java class that extends SQLiteOpenHelper
2. set up database name (Android will use this name on the device to store db)
   - int version number
     - start from 0
   - constructor
     - calls super, context DB_NAME, DB_VERSION
3. Methods:
   - onCreate
   - onUpgrade
   - insert Methods (insert into tables)
#### onCreate:
     - creates database version 0
     - add tables
       - exec.SQL("[sql]"

#### onUpgrade:
     - can add ALTER TABLE statements
     - DROP TABLE statements

##### Versioning:
- in onUpgrade method:
  - step by step upgrading from version to version until updated

#### Reading and Writing to Database
##### Reading
- open connection to a database (getReadableDatabase)
- set up a cursor object
  - browse row to row in database
  - use query method 

#### SQLite Characteristics
1. SQLite Helper
  - create, manager database
- SQLite Database
  - access the database
  - like SQLConnectoion
- Cursors
  - read and write to database
  - like ResultSet 

##### Security
- database is only readable by the app
- stored at the OS system level
- database in separate dir from app code

#### Other Databases
- can use as long as you can run java on it
- need proper driver to use
- conserve resources!
  - if not accessing the database directly
- jdbc would drain the battery of android



