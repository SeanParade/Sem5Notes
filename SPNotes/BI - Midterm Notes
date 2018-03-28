# Chapter 2: Making the Most of What You've Got - Using Business Intelligence
- [ ] what business intelligence can do for you
- [ ] business intelligence at many levels

## What Business Intelligence Can do For you
- support deicion making
- feedback information

### Types of Dtaa Exploration
1. layout-Led Discovery
2. data -led discovery

#### Layout-Led Discovery
- know the question we want answered
- know where to find the answer
- use reports to deliver BI

#### Data-Led Discovery
- know the question
- don't know where to find the answer
- the information we find determines where to go next
- need drilldown mechanisms
- must be done online

## Business Intelligence at Many Levels
- same info is not needed at every level of business

|   | Specific Goals  | Concrete Measures   | Timing of Info |
|---|---|---|---|
| Upper Management   | Long Term  | Highly summarized KPIs  | Latency OK |
| Mid Level Management   | Short Term  | Summarized data with drilldown  | Weekly-Monthly latency |
| Managers, Group leaders  | Day-to Day  | detail-level data  | Hourly-Daily latency |

### Upper Level
- measures represented by a status indicator
	- acceptable range or not
- do not need up-to-minute BI

### Mid Level
- summarized, but need to drill down for more detail
- reports with interactive systems
- less latency, updated measures
	- trends

### Bottom
- details of organization
- summaries with drilldown into detail
- low latency, react quickly to changes in feedback

# Chapter 3: Seeking the Source: Source of Business Intelligence
- [ ] data mart
- [ ] snowflakes, stars, analysis services

## Data Mart
- take info in OLTP and move to a different data store: data mart
- facts

### Features
- No Real-TIme Data
	- updated at set intervals
	- data load: copied from OLTP and written to data mart
- Consolidation and Cleansing
	- inconsistencies have to be scrubbed before entering data mart

### Data Mart Structure
- Measures
	- numeric quantity expressing an aspect of org. performance
	- used to support decision making
	- AKA a FACT
- Dimension
	-  way to slice and dice a measure
	- category to spread out an aggregate measure
	- e.g. dividing Total Sales by year
- Star Schema
	- fact tables, dimension tables
	- centre: fact table
	- primary key is created by concatenating all foreign keys into a composite
	- measures are named with Fact at beginning
	- dimensions: DimTableName
	- one dimension in each table
- Attribute:
	- additional information for dimension member
	- not a unique id or description of member
- Hierarchies:
	- multilevel structures
	- e.g. Year Month Day
	- in star schema, stored in dimension table
- Snowflake Schema
	- each level of hierarchy is stored in a separate dimension table
	- centre dimensions = lowest level of hierarchy
- Denormalized Relational Schema
	- if a dimension is only related to one set of measures, dim and attr are in same table as measures
	- dim related to more than one set of measures has its own table
		- has a unique id in the measure table and in the dim table
	- do not use DIM and FACT in table names
  
  # Chapter 4: Two, Two Models in One: The BI Semantic Model
- building OLAP out of cubes
	- Online Transaction Processing Systems
	- not good for delivering aggregated information

## Online Analytical Processing
- OLAP 
- quickly retrieve data from a data mart, etc for analysis
- measures, dimensions, hierarchy and cubes

### The BI Semantic Model
- SSAS
- Microsoft Power BI
- create models of data
- BI Semantic Model:
	- data can be stored and presented to user with multidimensional tables
	- or in tables, fields and relationships (Tabular Model)
- power BI supports Tabulate
- SSAS supports both

## Building OLAP Out of Cubes: The Multidimensional Model
- cube:
	- contains value for one or more measures
	- for each unique combination of the members of dimensions
		- measure: "detail", "leaf-level" values
	- contains aggregated values
- Aggregate:
	- single value: combining values from a dimension or set of dimensions
	- e.g. Sum aggregate
- use aggregate when traverse hierarchy
	- months rolled up into quarters and years

### Features of Multidimensional Model Implementation
- Multidimensional Database
- Preprocessed Aggregates
	- to return values quickly
- Easily Undershtood
	- reduce redundant data: data defined in one place
	- names useful to end user

### Architecture of Multidimensional Model Implementation
1. ROLAP (Relational)
	- cube in multidimensional db
	- leaf-level measures in relational data mart
	- preprocessed agg. in relational db table
	- store larger amounts of data
	- leaf-values are always up to date: retrieves values from data mart
	- slower
2. MOLAP (Multidimensional)
	- cube in multid db
	- aggregates and leaf-level values are in multid db as well
	- fast retrieval, slow initial loading
	- leaf-values not in sync with data mart
3. HOLAP (Hybrid)
	- stores cube structure and agg in multid
	- leaf-level data in relational data mart
	- longer retrieval when accessing leaf-level
	- values are updated

### Parts
- Data Sources
	- server name, db name, login credentials
- Data Source Views
	- combine tables for different views
	- can filter out info from db
- Proactive caching
	- preprocessed aggregates storage
	- created in cache before requested by user
- XML Definitions
	- definitions of objects are stored in XML

## Tabular Model
### Structure
- tables and fields
### Architecture
- Cached Mode
	- loads all data into memory
	- data compression
	- speed
- Direct Query Mode
	- does not load data into memory
	- queries data soruces
	- no latency to data
	- metadata layer: business query without programming logci


# Chapter 6 Building Foundations: Creating Data Marts
- designing data marts
	- [X] decision makers needs
	- [X] available data
	- [X] data mart structures
	- [X] creating a data mart using SSMS
	- [X] creating a data mart using SSDT
	- [X] table compression
	- [X] types of table compression
	- [X] benefits of integration

## Data Mart
- repository for data to be used as a source for business intelligence
- periodically received data from OLTP (Online Transactional Processing) systems
- an Analysis Services BISM can do this without data marts

### When to use data mart
- no data provider b/w OLTP and BISM
	- E.G. legacy systems
- no OLTP database (text, XML, excel)
- no physical connection b/w OLTP and BISM
- dirty data from OLTP to BISM
	- errors, inconsistencies, duplicates

### Designing a Data Mart
1. Star Schema
2. Snowflake Schema
	- both made up of measures, dimensions organized in hierarchies, attributes
3. Denormalized Relational Schema
	- made up of tables and fields
<hr>
#### Steps
1. ID what the business need is
2. Reconcile with what data is available
3. Organize data into data mart components
	- measures
	- dimensions
	- hierarchies
	- attributes
	- OR
	- tables
	- fields
4. Build database structure for data mart using one of the 3 schemas

<hr>

### Decision Maker's Needs
- have decision makers involved in these processes
	- ownership = they will use the tools
- What facts, figures, statistics do you need for effective decision making?
	- foundation, feedback measures
- How should this information be sliced and diced for analysis?
	- dimensions
- What additional information can aid in finding what is needed?
	- attributes

<hr>

### Available Data
- we can only use what is represented in the data source
- make sure all information needed can be obtained from the available data
- Measures and Attributes:
	- from fields in data
	- calculations based on fields
- Dimensions and Hierarchies:
	- represented in the data and relationships in the OLTP data source
- if info is not in data source, is it present in another data source?
	- can join the data in population of data mart
	- else, work with decision makers to gather information, or find alternative

<hr>

### Data Mart Structures
- measures, dimensions, hierarchies, attributes || tables, fields
#### Measures
- foundation and feedback + available facts
- Examples:
	- Monetary Amounts
		- value of sale
		- labour expenses
	- Counts
		- num items produced
		- num items ordered
	- Time Periods
		- num minutes to produce a product
		- num days to fill an order
- In design:
	- name of measure
	- what fields should be used to supply the data
	- data type
	- formula used to calculate measure
- **what** decision makers want to see
#### Dimensions and Hierarchies
- *dimensions*: spread measure into parts
- *hierarchies*: organize dimensions into levels
- drill down into a measure: general=>specific
- **how** decision makers want to see it
- dimensions preceded with:
	- by
	- for each
	- for every
- In design: dimensions:
	- name of dimension
	- name of field|s to supply data
	- data type of dimension key (unique identifier)
	- name of parent dimension (if exists)
#### Examples
- "Total sales by salesperson by year"
	- measure: total sales
	- dimension: salesperson
	- dimension: date
- "Roll up salesperson into sales regions"
	- hierarchies
	- sales region
		- sales person
- "Drill down from year into quarter"
	- hierarchy
	- year
		- quarter
 
#### Attributes
- additional information about a dimension
- information decision makers want to **filter** on
- Design:
	- name of attribute
	- what field|s used to supply data
	- data type
	- name of dimension to which it applies

### Schemas
- last step is to turn lists into star or snowflake schema
- all measures are placed in a single table : **fact** table
- dimensions at lowest hierarchy are placed in own dimension table
	- star:
		- all info for hierarchy is in same table
	- snowflake:
		- each level of hierarchy has own table

<hr>

### Creating a Data Mart Using SSMS
- connect to a development instance of SQL Server Database engine
- create a new database
- add new tables for all your dimensions
	- set Primary Keys for tables
	- set column as an **identity column** Is Identity option
		- source tables will not supply a value for this column
- create your fact table
	- set primary key
- save

<hr>

### Creating a Data Mart Using SSDT
- use cube wizard in SQL Server Data Tools
- open SSMS, connect to SQL server database engine
- create a new database
- open SSDT, new project, Business Intelligence: Analysis Services
	- Analysis Services Multidimensional and Data Mining Project
- right clicks Cubes folder: New Cube
	- select creation Method: Generate tables
- Define New Measures
	- Add new Measures
	- use Aggregation column for things like sum, etc
- Define New Dimensions
	- Add dimensions as required
	- check SCD Slowly Changing Dimension where required
		- e.g. Sales Person (may move to different region, want to track accurately)
	- Additional Steps for Time measures
		- Define TIme Periods (range, format, hierarchy)
		- Specify Additional Calendars (e.g. fiscal year)
- Define Dimension Usage
	- which dimensions are related to which measures
- Completing Wizard Page: Generate Schema now
	- creates relational database to hold data mart
- Specify Target: select database server where database is created
	- Data Source Wizard:
		- Connection Manager: define connection string
		- Select Database name
	- Impersonation Information:
		- Windows username and password | SQL username and password
- Subject Area Database Schema Options:
	- select operations Schema Generation Wizard should perform
	- uncheck Enforce referential integrity (ETL will process)
- Specify Naming Conventions
- Finish: Schema Generation Progress Box
- database is created
- Add additional fields using SSMS
- data mart is complete + analysis cube

<hr>

### Table Compression
- requires Developer | Enterprise Edition of SQL Server
- compresses data stored on disk drive to save space
- does not change structure of table, or syntax for querying table

<hr>

### Types of Table Compression
#### Row Compression
- for each row of data
- only used bytes required to store value
- SQL server "looks at" value being stored and determines storage required
	- nearest whole byte
- some overhead as data is inserted | updated
- small overhead when data is retrieved

#### Page Compression
- utilizes row compression
- adds **prefix compression** and **dictionary compression**

##### Prefix Compression
- looks for values that have a common beginning
	- stores a representative of common prefix in a reference row in page header
	- uses a pointer to the reference row
##### Dictionary Compression
- applied after prefix compression
- looks for repeating values within the page
	- representative of repeated value stored in page header
	- header entry is used in place of each occurrence

<hr>

### Benefits of Integration
- populate data marts
- using Integration Services
- in next chapter


# Chapter 7 : Transformers: Integration Services Structure & Components
## Integration Services
- change location of data
- copy from OLTP into data mart
- transform data formats
- verify foreign key values as we load the data

## Package Structure
- Integration Services Project
- Integration Services Package(s)
	- ETL Process
		- extract, transform, load

### ETL
- two levels of operation
- level 1: 
	- operations that need to be done to move data
- level 2:
	- define data transfers to move the data
	- how data needs to be cleansed/ modified as it transfers
		- e.g. data type, validation

### Structure
- operation is defined by Control Flow
	- sequence of tasks that will be performed by package
	- e.g. Data Flow Task
- Control Flow => Task => Data Flow => Event Handlers

## Package Items
### Control Flow
#### Containers
- hold control flow items and maintenance plan tasks
- organize, repeat set of tasks
##### Types
- For Loop Container
- Foreach Loop Container
- Sequence container
	- organize tasks
#### Items
- Analysis Services Execute DDL Task
	- run statement on analysis services server
- Analysis Services Processing Tasl
- Bulk Insert Task
	- copy data from text file -> server table or view
- CDC Control Task
	- chaneg data capture
- Data Flow Task
- Data Mining Query Task
	- execute a DMX (Data Mining Expression) query
- Data Profiling Task
	- Candidate Key Profile Request
	- Column Length Distribution Profile Request
	- Column Null Ratio Profile Request
	- Column Pattern Profile Request
	- Column Statistics Profile Request
	- Column Value Distribution Profile Request
	- Functional Dependency Profile Request
	- Value Inclusion Profile Request
- Execute Package Task
	- exe diff integration services package
- Execute Process Task
	- exe program/ batch file
	- e.g. unzip compressed files
- Execute SQL Task
- Expression Task
	- assign value to vairable
- File System Task
	- perform file system functions
		- e.g. copy, del, create, move, rename file, dir
	- must create a File Connection Manager to specify the source & destination
- FTP Task
	- send, receive files
	- create, remove local/remote dir
	- del local/remote files
	- must create FTP Connection Manager
- Hadoop File System Tasl
	- copy files to and from Hadoop -> Windows
	- must create Hadoop connection Manager
- Hadoop Hive Task
	- exe Hive Script on Hadoop cluster
	- req Hadoop connection manager
- Hadoop Pig Task
	- pig script
	- req h. connection manager
- Message Queue Task
	- send MSMQ Microsoft Message Queue to a different package
	- or to another application
	- coordinated, asynchronous processing
	- req MSMQ connection manager
- Script Task
	- create .NET code for exe
- Send Mail Task
- Web Service Task
- WMI Data Reader Task
	- exe Windows Management Instrumentation query
	- retrieve data about computer
	- WMI COnnection manager
- WMI Event Watcher
- XML Task
	- validate, apply transformation, apply query, merge, diff of XML doc
#### Control Flow Items Transfer SQL Server objects from server>server
- transfer Database Task
- Transfer Error Messages Task
- Transfer Jobs Task
- Transfer Logins Task
- Transfer Master Stored Procedures Tasl
- Transfer SQL Server Objects Task

#### Maintenance Tasks
- Back UP Database Task
- Check Database Integrity Task
- Execute SQL Server Agent Job Task
- Execute T-SQL Statement Task
- History Cleanup Task
- Maintenance CleanupTask
- Notify Operator Task
- Rebuild Index Task
- Reorganize Index Task
- Shrink Database Task
- Update Statistics Task

#### Custom Tasks
- can write your own

## Control Flow
### Tasks
- use **precedence** arrow sto define order of exe, dependencies
	- options: Success (Green), Failure(Red), Completion(Blue)
	- can also attach expressions, constraints to the arrow
- add event handlers

### Connection Managers
- used any time task makes a connection to a db or file system
- located in Connections tray
## Data Flow
- Data flow designer tab
- each data flow task added to control flow has own layout

### Data Flow Items
- data flow sources
	- read data from db
	- ADO.NET, CDC, Excel, HDFS, OData, ODBC, OLE DB, raw file
	- XML
- data flow transformations
	- operate on data as it moves through data flow
	- change data format, etc.
	- Aggregate (Average, count, etc), Audit
	- Balanced Data Distributor
		- splits data into multiple outgoing data flows
	- Cache Transform
		- populate cache, use for Lookup
	- CDC Splitter
	- Character Map (Lowercase, Uppercase, Simplified Chinese etc)
	- Conditional Split
		- split data flow into multiple outputs based on condition
	- Copy Column
	- Data Conversion
	- Data Mining Query
	- Derived Column
	- DQS Cleansing
		- dtaa quality knowledge base DQS to cleanse data
	- Export Column, Import Column
	- Fuzzy Grouping, FuzzyLookup
	- Lookup
	- Merge
		- merge two data flows together
		- dtaa flows ust be sorted using same order
	- Merge Join
	- Multicast
		- singe data flow as input to several transformations or destinations
	- Percentage Sampling
		- split data flow based on a percentage
	- Pivot, Unpivot
		- normalized data<-> denormalized
	- Row Count, Row Sampling
	- Scirpt Component
		- can be used as data source, destination, or trnasformation
	- Slowly Changing Dimension
		- update info in SCD
	- Sort
	- Term Extraction
		- extract a list of words and phrases from freeform text
	- Term Lookup
	- Union All
		- merge serveral flows into a single flow
	
- data flow destinations
	- write data to db, flatfile, xml, analysis services structures
	- ADO.NET
	- Data Model Training Destination
	- Data Streaming Destination
		- SSISOLEDB connection
	- DataReader Destination
		- consumers using ADO.NET DataReader
	- Dimension Processing Destination
		- send data flow to process dimension
	- Excel Destination, Flat File Destination, HDFS File Destination
	- ODBC Destination, OLE DB Destination
	- Partition Processing Destimation
		- provide new values for partition in an analysis services cube
	- Raw File Destination
	- Recordset Destination
	- SQL Server Compact Destination, SQL Server Destination

### Data Flow Segement
- flow path from data source to data destination
- transformation can be added to segment
- can contain single or multiple data sources/ destinations
	- execution plan is created to determine what order they execute


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
  
  # Business Intelligence Chapter 11
## MDX Scripts
- can be typed or created in **Calculation Tools** window
	
### Addative Measures
```mdx
[Measures].[Accepted Products] + [Measures].[Rejected Products]
```
#### Examples
- Count
- DistinctCount
- Sum

### Nonadditive Measures
- calculating average, min or max values of a measure along a dimension
- can set AggregateFunction property of a measure
	- select Measure in Cube Structure Tab
	- use properties to set AggregateFunction

#### Examples
- None: no aggregation is done

### Semiadditive Measures
- measures such as inventory level
- must use semiadditive in order to get proper results
- measure must be related to a Time dimension
- requires Developer or Enterprise edition

#### Examples
- AverageOfChildren: average of all non-empty child members
- ByAccount : uses aggregate function specified by an account dimension or None
- FirstChild
- FirstNonEmpty
- LastChild
- Max
- Min

### Flexible vs Rigid attribute relationship
- Flexible
	- may change between full process of the dimension
- Rigid
	- does not change
	- e.g. 8/1/2016 will always be in August 2016

### Types of Dimensions
- classifications
- can show how they are created and managed
- can shed light on how it's utilized

### Fact dimensions
- dimensions created from attributes in a fact table
- AKA degenerate dimensions
- most commonly used when users would like to access something that is unique for each record in the table
	- use fact dimension table to reduce data redundancy

#### Rules
- at most one fact dimension to a measure group
- must be defined by one and only one measure group
- can have a fact relationship with only one measure group
	- can have regular relationship with other measure groups

### Parent/Child dimension
- on a table to contains self-referential relationship
- Parent Attribute
	- eg. Employee and Supervisor

### Role playing dimensions
- related to the same measure group multiple times
- each relationship is a different role
- e.g. time dimension, sales measure group:
	- date of sale
	- date of shipment
	- date of payment
- to create add dimension to Dimension Usage multiple times
	- rename each time to reflect roles

### Reference Dimensions
- related to another regular dimension
	- the other dimension is related to the measure group
	- intermediate dimension
- to create, select Referenced from Select Relationship

### Data Mining Dimensions
- include information discovered by data mining algorithms
- selecting Data Mining from Select Relationship

### Many to Many dimensions
- many to many relationships between dimensions and measure group memeber
- e.g. order that has multiple ship-to addresses

### Slowly Changing Dimensions
- dimensions that change over time
- e.g. salespeople moving Territories

#### Type 1
- don't keep track of history as it changes
- represents way things are right now

#### Type 2
- four supplementary attributes are added to the dimension"
	- SCD Original ID
	- SCD Start Dtae
	- SCD End Date
	- SCD Status
- with OriginalID a salesperson can appear in the dimension more than once
- use an alternate key as the primary key
	- have to use in foreign key of fact tables

#### Type 3
- similar to Type 2 except:
	- does not track entire history of members
- tracks **current state** and **original state** of a dimension member
- additional attributes:
	- SCD Start Date
	- SCD Initial Value


# Chapter 12 : Special Features of OLAP Cubes
- once cubes are deployed, we can examine special features
- for cubes to be useful they must be deployed

## Deploying
- move project definition to server environment
- objects are exposed to any users with access
- must be contained within an Analysis Services database

## Processing
- when an Analysis Services database is processed
	- reads data from the data source
	- dimensions are populated with members
	- members are populated with facts
	- aggregates are calculated

### Order of Processing
- Dimensions created
- Map files of dimension and hierarchy member combos created
	-  used for calculating aggregates
- Measures are processed
	- data read from fact tables creates measures
	- map files are used to create aggregates for entire cube

## Deploying from SQL Server Dtaa Tools
### Properties
- Database
	- name of analysis services database
- Server
	- name of analysis server instance
- Server Mode
	- how project is deployed
- Transactional Deployment
	- single : true
	- multiple: false
- Processing Option
	- what cube processing is done as deployment
	- Default: whatever processing necessary
	- Do Not Process
	- Full: all data is deleted from deployed and values are reloaded/ recalculated
- stored in configuration files in bin folder
	- .deploymentoptions
	- .deploymenttargets

# Deploying from Analysis Services Deployment Wizard
- when we don't have access to the target server
- examines project definiton and create scripts
	- JSON script for Tabular
	- XML/A script for Multidimensional
- scripts recreate the model on a server
- we execute the file on the server to complete the deployment
- Analysis Services Deployment Wizard is a standalone program

## Additional Cube Features

### Linked Objects
- instead of duplicating data from several cubes
- take measures and related dimensions from one cube and reference through another cube
- created in Cube Structure tab of Cube Design
- create a data source connection to the analysis services database

### Business Intelligence Wizard : SQL Server Data Tools
- define time intelligence
	- adds time related calculated measures
	- e.g. rolling averages, period over period growth
- define account intelligence
	- id a dimension and attributes that define a chart of account
	- additional calculated values can be added
- define dimension intelligence
	- id dimension and attributes of being a certain type
- specify a unary operator
	- to be used instead of default aggregation in dimension with parent-child hierarchy
- create a custom member formula
	- calculation to be used instead of default aggregation in hierarchy
- specify attribute ordering
	- how members of an attribute are to be sorted
	- default: name
- define semiadditive behaviour
- define currency conversion
	- rules for converting currency

#### Use
- Add business Intelligence button on Cube Structure of Cube Design tab
- or right click cube or dimension in Solution Explorer window

### KPI Key Performance Indictator
- define a simpel graphic method for analyzing business intelligence
- part of "digitial dashboard"

#### Digital Dashboard
- intelligence is build into the dashboard
- no need to crunch through numbers in spreadsheet

##### Status Levels
- Very Good
- Good
- Fair
- Bad
- Very Bad

#### Creating
- KPI tab in Cube Design

#### Properties:
- Name
- Associated Measure Group
	- group used to calculate values
- Value Expression	
	- MDX expression to calculate current value
- Goal Expression
	- MDX ecpression to express current goal
- Status Indicator
- Status Expression
	- MDX expression translate current value of KPI into graphic represenation
	- must calculate values for each KPI Status

#### Additional Functionality
- Trend Indicator
	- direction in which KPI value is trending
- Trend Expression
	- MDX : translate trend into graphic representation
	- Upward  = 1
	- Mildly Upward = 0.5 
	- Flat = 0
	- Mildly Downward = -0.5
	- Downward = -1
	- must calculate values for each trend situation
- DIsplay Folder
	- grouping folder to organize KPIs
- Parent KPI
	- can be hierarchical: 
	- one KPI displays rollup value, child displays detail
- Current Time Member
	- MDX: current time member (chapter 13)
- Weight
	- MDX: emphasis given to KPI
	- returns numeric value
- Description

#### Client Software
- make sure KPIs are supported by the software used to display the graphics

### Actions
- define commands, statements, directives to  be executed outside of the cube
- instructions are defined and stored inside the cube
	- link to certain objects in the cube
- when user browses object, software can look for related Actions

#### SubTypes
- Dataset
	- Proprietary
	- Rowset
	- Statement
		- runs OLEDB command
	- URL
- Drillthrough
	- dataset to be returned as drillthrough for detail
- Reporting
	- launches SQL server reporting services report

#### Properties
- Name
	- must be unique
- Target Type
- Target Objects
- Condition
	- MDX: limit objects to which action is associated
- Type
- Action expression
	- command to carry out action
- Invocation	
	- How is it executed?
	- Batch
	- Interactive
	- On Open
- Application
- Description
- Caption
- Caption is MDX
	- flag whether caption is **string constant** or **MDX expression**

#### Drillthrough Actions
- do not have:
	- Target type
	- Target Object
	- Action Expression

##### Additional Properties
- Measure Group Members
- Drillthrough columns
	- what objects to include in detail
- Default
	- boolean flag
- Maximum rows

#### Reporting Actions
- do not have:
	- Type
	- Action Content
##### Additional Properties
- Server Name
- Report Path
	- path to report server
- Report Format
	- HTML
	- Excel
	- PDF etc
- Parameters
	- parameter values to pass to report

### Partitions
- are created automatically with Measure Groups
- for ease of management and better performance
- each one has its own data source table

#### Multiple Partitions
- can have multiple partitions for a measure group
	- upt o 3 in standard
	- unlimited in Developer and Enterprise
- presented to client as single table
- all partitions must have the same structure

##### From Several Tables
- create multiple views in database
- or create named queries in data view
- must strictly define criteria for membership in each view or query

#### Partition and Storage Options
- dialog box
- left : lowest latency, slowest query speed
- right: highest latency, fastest query speed

### Storage Options
- Storage location for detail data and preprocessed aggregated
	- ROLAP : 
		- relational format
	- HOLAP :
		- detail: relational
		- aggregate: multidimensional
	- MOLAP
		- multidimensional

#### Notifications about data source changes
- SQL Server Notification
- Client Initiated Notification
	- NotifyTableChangeCommand
- Scheduled Polling
	- periodic query to catch ADDs to fields
- Enable Proactive Caching
- Silence Interval
	- wait until changes settle before processing
- Silence Override Interval
	- length of time we wait for silence interval before procesing anyway
- Drop outdated Cache Latency
	- time we permit outdated aggregates to live in cache
- Update Cache Periodically
	- script: update proactive cache

#### Predefined Settings
- Real-Time ROLAP
	- all detail data and aggregates query direct from relational data source
	- no notification necessary
	- current data, slow query performance
	- for data changing frequently that must be up to date
- Real-Time HOLAP
	- detail data remains in relational data source
	- aggregates in multidimensional storage
	- when Analysis Services is notified, it proceses cube *without silence interval*
	- no proactive cache is used
	- better performance of queries when aggregates are up-to-date
	- best for data changing frequently with intervals for processing
- Low Latency MOLAP
	- detail and aggregates are in multidimensional storage
	- waits for silence interval for 10 seconds before processing
	- silence override interval of 10 minutes
	- processing: queries are sent to proactive cache
		- if takes longer than 30 minutes, cache is dropped and queries sent to relational data source
	- fast query response (unless > 30 min processing)
	- best: query performance is important, data fairly current
- Medium latency MOLAp
	- if processing takes longer than 4 hr cache is dropped and queries sent to relational data source
	- fast query response, unless processing > 4 h
	- max latency = 4 h
	- best: query performance is important, latency can be tolerated
- Automatic MOLAP
	- multidimensional storage
	- interval silence 10 s
	- silence override 10 min
	- proactive cache which is never dropped
	- fast query response at all times, large latency if processing is long-running
	- best: query is most important, large latency can be tolerated
- Scheduled MOLAP
	- multidimensional storage
	- does not receive notification if data source changes
	- auto processes every 24 hr
	- queries sent to proactive cache, whcih is never dropped
	- max latency of 24 h + processing time
	- best: notification mechanism is not available, or data updates occur nightly
- MOLAP
	- multidimensional storage
	- no notification of changes
	- processing intiated manually by admin
	- no proactive caching: queries cannot be run while processing
	- best: data is changing rarely, development and testing environments



### Writeback
- adjust entries to cube data
- stored in special table added to data source
- additional partition in measure group
	- incorporated into queries of this measure group
- enable in Partitions context menu

### Aggregation Design
- determine a pattern of aggregates within partition
- strike balance between storage requirements and query speed
- determines key aggregates, calculates and stores them
- others are calculated from key aggreates at the time of query

#### Usage Based
- usage based optimizaton wizard
#### Manual
- aggregation design wizard

### Perspectives
- cubes can look different to different users

### Translations
- localize metadata contaned in cubes


# MDX Scripting Chapter 13
## Terms and Concepts
- for extracting and analyzing data from cubes

### Cells
- cubes are divided with dimensions
- cells are these smaller sections of cubes
- id location
	- tuples 
	- specify value from each dimension to locate

```mdx
 ([Clay Molder], [Woodland Creatures], [2014])
```
> id for the location of a cell in cube

### Levels
- many dimensions contain hierarchies or **levels**
- start with the name of the dimension
	- follow path from top of hierarchy to the bottom

```mdx
[Dim Product].[All].[Mythic World].[Dragons].[Dragon with Knight]
```
> path to Dragon with Knight product : lowest level of hierarchy

```mdx
[Dim Product].[All].[Warriors of Yore].[World War II]

```
> path to World War II product subtype (not lowest level of hierarchy)

#### Shortcuts
- specify the name of the dimension, name of hierarchy level interested in, member of the hierarchy
- can leave out additional pieces
	- drop name of dimension
	- drop dimension level
	- or both
- have to end up with unambiguous location in the dimension

```mdx
[Dim Product].[Product Subtype].[World War II]

```
> shortcut path to World War II product

```mdx
[ProductSubtype].[World War II]

[Dim Product].[World War II]

[World War II]
```
> alternate shortcuts to World War II product
- because World War II is a unique member name across all levels, we can drop both dimension name and dimension level

### Expression Errors
- we don't end up with an error message
- we end up with nothing for the dimension

### Default Members
- shortcuts to paths in the cube

```mdx
([Machine #1], [Wolves], [2014].[Q1])
```
> we cannot use just Q1 because Q1 exists for 2014 and 2015

### Omitting dimension
- Analysis Services uses the default member
	- All (top member of hierarchy)
- can set a different default

### Sets
- return multiple cells instead of a singular
- use a group of tuples

```mdx
{([American Eagles], [2014].[Q1]), ([American Eagles], [2014].[Q2]),
([American Eagles], [2014].[Q3]), ([American Eagles], [2014].[Q4]),
([Black Bears], [2014].[Q1]), ([Black Bears], [2014].[Q2]),
([Black Bears], [2014].[Q3]), ([Black Bears], [2014].[Q4])
}
```
> example of a multicell set
- curly braces surround entire set
- inefficent notation

### Range Operator
- specify a set with fewer keystrokes
- use colon operator to specify range of members in a tuple

```mdx
([American Eagles]:[Wolves], [2014].[Q1]: [2014].[Q4])
```
> an example of set with colon operator to specify range
- can only be used if the cells are continguous

### Name Attributes
- integer keys are used as unique identifiers
- we don't want to make users remember product codes etc.
- can have text fields that contain names for each member value
- sort dimension memnbers by name rather than integer keys

```mdx
[Dim Product].[Product].[&21]
```
> reference a member by its key value rather than name

## Relative Navigation
- e.g. examining measures for Wolves produced on Machine #6 in Q1, 2015
- want to look at same measures from one year ago
	- **Comparison Cell**

### CurrentMember Function
- determine current tuple for the current cell
- requires either a hierarchy or dimension as input

```mdx
[Dim Time].CurrentMember
```
> returns a reference to the member

```mdx
[Dim Time].CurrentMember.Lag(4)
[Dim Time].CurrentMember.Lag(-4)
[Dim Time].CurrentMember.PrevMember
[Dim Time].CurrentMember.NextMember
[Dim Time].CurrentMember.Lead(3)
[Dim Time].CurrentMember.Lead(-3)

```
- lag and lead require an integer : num of members to lag or lead
- lag: move backward by n 
- lead: move forward by n 

### Move up and down among Hierarchy levels
```mdx
[Dim Product].CurrentMember.Children
[Dim Product].CurrentMember.FirstChild
[Dim Product].CurrentMember.FirstSibling
[Dim Product].CurrentMember.LastChild
[Dim Product].CurrentMember.LastSibling
[Dim Product].CurrentMember.Parent
[Dim Product].CurrentMember.Siblings

```
- the member itself is always included in a list of its sibling

#### Distant Relative Position
- Ancestor function
	- returns parent, grandparent, great-grandparent etc. of member
	- requires two parameters
		- starting point
		- hierarchy level where ancestor is to be found, or integer with number of levels up
- Cousin function
	- equivalent member at same level of hierarchy but down a different branch
	- cousin of January (first month of Q1) are April, July, October
	- two parameters:
		- member whos cousin is to be found
		- member at higher level under which cousin is to be found
- Descendants function
	- returns children, grandchildren, great-grandchildren etc. of member
	- two parameters
		- 
```mdx
Ancestor([2013].[Q3].[Jul], 
	[Dim Time].[Year])

Ancestor([2013].[Q3].[Jul], 2)

Cousin([2013].[Q2].[Apr], [2013].[Q4])

Descendants([2015], [Month])

Descendants([2015], 2)
```

### Using MDX Scripting
- use security roles to limit access to portions of a cube

# Pulling it out and building it up: MDX Queries
## Chapter 14
<hr>

# MDX Queries
- extract information
- SELECT Statement
- Basic Select
- Additional Tools

## MDX SELECT STATEMENT
- produces a result set from a multi-dim db
- returns a **multidimensional result set**
	- can contain rows and columns
	- can contain pages, sections, chapters

### Basic examples

```mdx
SELECT FROM [Cube Name];

SELECT FROM [Max Min Manufacturing DM];

```
- when this executes, it creates a set of **tuples** and then returns the value of one or more measures for each tuple
	- a tuple must contain one member from each dimension in the tube

##### Members of Dimensions
```
 (Dim Batch Hierarchy Member,
		Dim Machine Hierarchy Member,
		Dim Product Hierarchy Member,
		Dim Time Hierarchy Member,
		Measures Member)
```

- when a member is not explicitly specified for a dimension, the default member is used

##### Tuple that defines our result
```mdx

([Dim Batch].[Batch Number].DefaultMember,
[Dim Machine].[Material Hierarchy].DefaultMember,
[Dim Product].[Product Hierarchy].DefaultMember,
[Dim Time].[Time Hierarchy].DefaultMember,
[Measures].DefaultMember)
```

#### Query Dimensions
- specify members other than defaults
```
//format
SELECT {set of dimension members} ON COLUMNS
FROM [Cube Name];

//example
SELECT {[Guiding Lights], 
		[Mythic World],
		[Warriors of Yore],
		[Woodland Creatures]} ON COLUMNS
FROM [Max Min Manufacturing DM];

//shortcut
SELECT [Product Type].Members ON COLUMNS
FROM [Max Min Manufacturing DM];

```

##### Second Query Dimension
```mdx
//format
SELECT {set of dimension members} ON COLUMNS,
	{set of dimension members} ON ROWS
FROM [Cube Name];

//example
SELECT [Product Type].Members ON COLUMNS,
	[Year].Members ON ROWS
FROM [Max Min Manufacturing DM]

```
- a tuple is created combining each member from COLUMNS with each member from ROWS
- value is retrieved for the member of measures dimension in each tupple
- can use more than 2 query dimensions

### Slicer
```mdx
//format
SELECT {set of dimension members} ON COLUMNS,
	{set of dimension members} ON ROWS
FROM [Cube Name]
WHERE [Measures dimension member]

//example
SELECT [Product Type].Members ON COLUMNS,
	[Year}.Members ON ROWS
FROM [Max Min Manufacturing DM]
WHERE [Measures].[Total Products]
```
- get the total products for each product type for each year
- can use slicer to specify dimension members to use in place of default members
	- WHERE clause would contain a tuple
	- can include any number of dimension members
- dimensions can appear in **query dimensions** or **in the slicer**

### Filter
- for determining the content of the set using a conditional expression
- SET: all data you want to include
- SEARCH CONDITION: the condition to compare the set
- FILTER: removes data not meeting search condition

```mdx
//format
FILTER(<<Set>>, <<Search Condition>>)

//example
SELECT FILTER([Product].Members,
		([Month].[201512], [Measures].[number On Backorder]) <
		([Month].[201511], [Measures].[Number on Backorder])) ON COLUMNS,
	[Month].[201512] ON ROWS
FROM [Max Min Manufacturing DM]
WHERE ([Measures].[Accepted Products])
```

#### NON EMPTY statement
- get rid of Null values
- SELECT NON EMPTY

## Additional Tools for Querying
### WITH
- define a **named set** that can be used in the MDX Query
- keep MDX select statement understandable
- named sets are reusable
- can use with temporary calculated members

```mdx
//format
WITH SET [named set name] AS
{set definition}

//example
WITH SET [American WWII Figures] AS
	{[American GI], [US Army Pilot], [US Navy Gunner's Mate]}

SELECT {[American WWII Figures]} ON COLUMNS,
	[Year].Members ON ROWS
FROM [Max Min Manufacturing DM]
WHERE [Measures].[Total Products];
```

#### Temporary Calculated Members
- each calculated member is an individual member
	- aggreated information from other members
- when used only the newly defined members appear in the set
```mdx
//format
WITH 
	MEMBER [parent member].[calculated member name] AS
	{member definition}

//example
WITH
	MEMBER [Measures].[Percent Of Parent] AS
	CStr(ROUND(([Product Hierarchy].CurrentMember,
			[Measures].[Total Products])*100/
		([Product Hierarchy].CurrentMember.Parent,
			[Measures].[Total Products],2) ) + "%"

SELECT [Product Type].Members ON COLUMNS,
	[Year].Memebrs ON ROWS
FROM [Max Min Manufacturing DM]
WHERE [Measures].[Percent Of Parent];
```

### CROSSJOIN
- two dimensions on a single query dimensio
- alternative use * 

```mdx
//example
SELECT CROSSJOIN([Product Type].Members,
			[Plant].Members) ON COLUMNS,
	[Year].Members ON ROWS
FROM [Max Min Manufacturing DM]
WHERE [Measures].[Total Products]; 

//shortform using *
SELECT {[Product Type].Members * [Plant].Members} ON COLUMNS,
	[Year].Members ON ROWS
FROM [Max Min Manufacturing DM]
WHERE [Measures].[Total Products]; 

```

### TOPCOUNT/ BOTTOMCOUNT
- highest/ lowest values
```mdx
//topcount format
TOPCOUNT(<<Set>>, <<Count>>[, <<Numeric Expression>>])

//example topcount
SELECT TOPCOUNT([Product].Members, 5,
			[Measures].[Total Products]) ON COLUMNS
FROM [Max Min Manufacturing DM];

//bottomcount format
BOTTOMCOUNT(<<Set>>, <<Count>>[, <<Numeric Expression>>])

//example bottomcount
SELECT BOTTOMCOUNT([Product].Members, 5,
			[Measures].[Total Products]) ON COLUMNS
FROM [Max Min Manufacturing DM];
```

### Aggregates
- SUM
- COUNT
	- optional second param: whether empty cells are counted
- DISTINCTCOUNT
	- distinct
	- put in own measure group

### Additional Dimensions
- COLUMNS
	- ROWS
		- PAGES
			- SECTIONS
				- CHAPTERS
- must be used in this order

#### AXIS(n)
- once we move beyond 5 query dimensions, we use AXIS(n) to refer to the dimensions
- can use AXIS(0) AS COLUMNS
- can use AXIS(1) AS ROWS
```mdx
//example
SELECT [Product Type].Members ON AXIS(0),
	[Year].Members ON AXIS(1)
FROM [Max Min Manufacturing DM]
WHERE [Measures].[Total Products];

//shortcut
SELECT [Product Type].Members ON 0,
	[Year].Members ON 1
FROM [Max Min Manufacturing DM]
WHERE [Measures].[Total Products];
```
- query window does not display more than 2 dimensions in SSMS

### Additional Syntax
- Operators
- Comments

#### Comment
```mdx
/*...*/ multiline
-- single line
//single line
```

#### Operators
##### Numeric
- + Positive/Additive
- - Negative/Subtraction
- * Multiplication
- / Division

#### String
- + concatenation

#### Logical
- < 
- <=
- <>
- =
- >
- >=
- AND
- IS
- NOT

##### SET
- - Except
- * CrossJoin
- + Union
- : range
- except and union only work with sets from same dim
- crossjoin requires 2 sets from different dims

### Functions
- Dimension
	- reutrns dimension of object
- Hierarchy
- Level
	- returns level to which object belongs

#### Logical Functions
- IsAncestor(member1, member2)
	- returns true if member 1 is ancestor of member2
- IsEmpty(mdxExpression)
	- returns true if expression returns empty cell
- IsGeneration(member1, expression)
	- returns true if member1 is member of generation represented by the expression
- IsSibling
- IIF(logical expression, expression1, expression2)
	- if the logical expression is true, expression 1 is evaluated
	- if false, expression 2 is evaluated

#### Member
- ClosingPeriod(level, member)
	- returns member at level that represents last item occupied by member
- Item(n)
	- reutrns nth member of tuple
- OpeningPeriod(level, member)
	- returns member at level that is first item occupied

### AGGREGATE
- uses default aggregation operator for a measure

### Data Analysis
- also includes numerical functions to assist in analysis
- some include:
	- Min, Max, Median
	- Covariance, CovarianceN
	- LineRegIntercept, LineRegPoint, LineRegR2, LineRegSlope, LineRegVariance
	- LookupCube
	- Stddev. Stdev, StddevP, StdevP
	- Var, Variance
	- VarP, VarianceP


