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
