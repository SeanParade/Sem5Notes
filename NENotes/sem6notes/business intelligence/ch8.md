# Filler Er Up Using Integration Services... ch 8
- copy info from OLTP system -> relational db tables
- 2 processes:
	- populate dimensional tables
	- add new info to the fact table

## Creating an Integration Services Project
- SQL Server Data Tools
- Business Intelligence
- Package.dstc entry
### Control Flow
- design surface
- create data source:
	- "data flow task item" from SSIS toolbox
- ADO.NET source item -> data flow tab
- Create data destination for Load Data Flow
	- use SQL Server Destination item -> Data Flow Tab
	- drag arrow from ADO.NET SOURCE -> SQL Server Destination
- More extensive details in Learn By Doing section

## Programming: Integration Services
### Variables
- pass info between parts of package
- managed using Variables window
- strongly-typed: memory allocation done in advance
- has own scope
- can be used in expressions and other code within same scope
- **namespace**
	- logical groupins of variables
	- all system variables are in System namespace
	- all user var in User namespace
- Raise event when variable changes column
	- configure an event handler
### Expressions
- evaluate conditions and change package properties at run-time
- similar to C#
- strongly-typed variables
### Literals
- values known at time code is written
- numeric literals
	- can include negative sign
	- no comma
	- can have decimals or scientific notation
- boolean
### Identifiers
- values not known until runtime
- preceded by @
- can also represent data flow columns
	- e.g. Customer# AmountWith6PercentTax
- **Regular identifiers**
	- first char is letter or _
	- remaining characters: letters, numbers, _, @, $, #
- **Qualified Identifiers**
	- anything not regular
	- e.g. [Customer Name] contains spaces
- Name resolution operator
	- ::
	- places within scope and variable name
	- used when variables in diff scopes have same name
- Data flow columns with same name
	- use period between item and column
	- FlatFileSource.CustomerName
	- if either are not regular use square brackets
### Expression functions
- there's a ton
- heres a sample:
	- ABS, CEILING, EXP, FLOOR, LN, LOG, POWER, ROUND, SIGN, SQUARE, SORT
	- CODEPOINT, FINDSTRING, HEX, LEFT, LEN, LOWER, LTRIM, REPLACE, REPLICATE
	- DATEADD, DATEDIFF, DATEPART, DAY, GETDATE, GETUTDATE, MONTH, YEAR
	- ISNULL, NULL, REPLACENULL
### Typecasts
- follow the pattern DT_*
- Examples:
	- DT_DATE
	- DT_BOOL
	- DT_IMAGE
	- DT_I1 (one byte integer)
		- also DT_I2...DT_I3...
	- DT_I8 (8byte integer)

### Event Handlers
- create a **control flow** that executes in reaction to an event	
- Events:
	- error
	- warning
	- change in value
	- beginning a task
	- completing a task

### Control Flow for events
- looks the same as control flow for package as a whole
- package control flow: exe once each time package is run
- event control flow exe many times or none

#### Error handlers
- check state of host server before executing
- send email to admin when error
- cleanup after process completed

#### Creating an Event handler
- use Event Handlers tab
- Select an item in the package
- Select an event
- Drag and drop items to create functionality for event handler

## Package Development Tools
### Import/Export wizard
- transfer data from and to
### Logging
- testing adnd debugging
- use Configure SSIS Logs dialog box
- determine which events cause a log
	- default: beginning and ending of item's execution
#### Types of Logs
- CSV text file
- file read by SQL profiler
- SQL server table names syssislog
- Windows Event Log
- XML text file
### Transactions
- ensure data is consistent
- ensure everything completes successfully
- commit or roll back changes
- **TransactionOption** property
	- Supported
		- joins transaction if active
		- does not initiate a transaction	
		- default setting
	- Required
		- joins a transaction if active
		- will initiate one if not active
	- NotSupported
		- does not join a transaction
		- does not initiate one
### Checkpoints
- perform a restart in the middle of a package
- three properties:
	- SaveCheckpoints
		- bool
		- enables/disables saving of checkpoint info
	- CheckpointFileName
		- filename where checkpoint info is saved
		- logs info about each transaction
		- uses this file to determine where restart
	- CheckPointUsage
		- how fie is used when executes
		- Never
		- Always
			- last point of failure
		- IfExists
			- if checkpoint file exists

### Package Debugging
- breakpoints
- set breakpoint by clicking the task - Edit Breakpoints
- Set Breakpoints Dialog box
- can be set on any event triggered by the task
- Hit Count Type, Hit Count
	- whether exe pauses every time event is triggered or only after multiple times
#### Viewing Package State
- use Debug Window, View Menu, Windows Toolbar button
- Progress Marks
	- current execution status
	- yellow circle: currently exe
	- green circle: success
	- red circle: errors
- Row Counts
	- num of rows processed is displayed
- Execution Results
	- description of current exe satus
- BreakpointsWindow
	- delete or disable breakpoints
- Output Window
	- displays status messages
- Script Explorer Widnow
	- view script structure
- Watch Windows
	- examine and modify variable values
	- enter without @ sign
- Autos Window
	- value of variables in current and prev line
- Locals Window
	- all system and user variables in scope
- Immediate Window
	- evaluate expressions
	- display value of var
- Call Stack Window
	- hierarchy of containers around exe task
- Threads Window
- Modules Window
	- view script modules
- Processes Window
	- currently exe processes

### viewing Data flow
- attach data viewers to the data flow
- pauses exe and we cna exmaine the rows
- use Data Flow Path Editor flow path arrow
- By default: all columns in data flow are displayed in data viewer
- Create a Data Viewer without opening Data Flow Path Editor dialog
	- right click flow path arrow and select Enable Data Viewer

#### Data Viewers
- can be places on multiple flow path arrows
- shwo one data buffer at a time
- by default: buffer contains 10000 rows or 10MB of data (whichever less)

## Change Data Capture
- uses SQL transactional log to capture data modifications
- ETL can read data from logs to update data
- less expensive than other methods
	- adding fields to database table
	- creating triggers/ stored procedures
	- etc
- SQL transaction log is in format only for SQL Server db engine
- Change Data Capture converts to a different format
	- as part of SQL Agent Job 
### Change Data Capture Architecture
- should look at diagram on page 499 of textbook
- bad description:
	- Transactional Database includes Data Table Schema[tables], 
		- CDC Schema[tables]-> CDC Query Functions -> SSIS data flow -> Data mart
	- outside of database is Transactions -> Data Table Schema[Tables]
	- Transactions -> SQL Transactions Log -> Change Data Capture Job -> CDC Schema[tables]
	
- transaction information format is converted and stored in **change table**
	- one table for each table being tracked
	- created in CDC Schema
	- table name: cdc.schemaname_tablename_CT
- can create a set of functions for easy retrieval

### Loading a Data Mart Table from a Change Data Capture Table
- create 2 Integration Services Packages
	1. initial load of data
	2. propagate incremental changes from source to destination
#### Initial Load Package
1. CDC Control Task
	- starting Log Sequence Number LSN
	- control operation: Mark Initial load start (default)
- Control flow
	- copies records from source to destination
- CDC Control Task
	- ending LSN
	- control operation: Mark Initial Load end
#### Incremental Load Package
- CDC Control Task
	- control operation: Get processing range
- Data Flow Task
- CDC Control Task
	- control operation: Mark processed range
##### CDC Splitter Item
- creates 3 branches to the data flow
	- rows to be inserted
	- rows to be updated
	- rows to be deleted
##### Notes
<p>
There are more differences between Initial and Incremental, but honestly I didn't understand them.
Had to do with data flow and connection managers check pages **482-483** for more info 
</p>

### Loading a Fact Table
- Learn By Doing
- view current inventory amount and number of backorders while analyzing manufacturing production
- inventory and fact table added as a second fact table in data mart

#### Populate Fact table with Integration Services
- use info in CSV file
- use Data flows to populate the dimension tables

##### Steps
1. Create a Project Connection Manager
	- SQL Server Data Tools, DMLoad project from earlier
	- right click the MaxMinManufacturingDM Connection
		- convert to Project Connection
		- reference to connection is in connection tray wit (project)
###### Create Load DimBatch DataFlow
- new SSIS package
- rightclick Package.dtsx entry
	- rename to appropriate name e.g. FactLoad
- drag data flow task item and drop on Control Flow tab
	- rename to appropriate name e.g. Load DimBatch
- double click this item to go to Data Flow tab
- Connections tray- New Flat File Connection
	- enter the CSV file name for Connection Manager Name
	- browse for the CSV file
	- check import column names
	- make sure columns are the correct data type
	- exit
- Click Flat File Source item that was created
	- can view the data connection in connection manager drop down list
	- select columns- can check and uncheck which columns you want
- Drag a Sort item from Common section of SSIS toolbox into Data Flow Tab
- Click on Flat File Source Item
	- click blue data flow arrow and drag to Sort Item
	- connects Source to Transformation
- Click Sort Item to open Sort Transformation Editor box
	- can check available input columns
	- can remove rows with duplicate values
- Drag Derived Column Item from SSIS Toolbox and drop on Data Flow tab
- Connect Sort Item to Derived Column with blue Data Flow Arrow
	- configure derived column name, expressions
- SQL Server Destination Item from SSIS Toolbox into Data Flow tav
	- Drag blue data flow arrow from Derived Column -> Destination Item
		- connects Transformation -> Destination
	- Mappings page shows map between db columns and derived columns

## Putting Integration services packages into production
- deploy packages to servers

### Parameters
- interaction with package at run time
- e.g. server names and data paths change over time
- parameters are exposed outside of the package
- parameter value is not used as default when deployed to server
- all param have a value of blank or 0 for numeric
	- values must be specified on server
#### Types
- Project Parameters
	- created in SSIS project
	- used by any package in that project
- Package Parameters
	- exist within single package

#### Associating Properties with Parameters
- Item in control flow: Right click and select Parameterize
- Expressions property of an item: Property Expressions Editor dialog box
	- build expression to supply value for property
	- e.g. @[$Package::ErrorFileFolder]+"\\MfgInfoErrors.txt"
#### Integration Services Catalog
- need to include IS as part of the Server Install
- create Integration Services Catalog to store packages using SSMS
	- right click Integration Services Catalog folder, select Create Catalog
- requires CLR integration to be enabled
	- Common Language Runtime
- two methods to Load Integration Services package into catalog:
	1. SSDT using **deploy** process
	2. SSMS using **import process**