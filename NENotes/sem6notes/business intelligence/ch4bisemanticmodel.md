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
