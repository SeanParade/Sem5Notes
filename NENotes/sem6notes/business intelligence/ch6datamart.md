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
