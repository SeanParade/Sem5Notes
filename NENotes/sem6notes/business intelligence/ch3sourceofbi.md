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
