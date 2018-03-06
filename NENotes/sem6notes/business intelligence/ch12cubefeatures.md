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

