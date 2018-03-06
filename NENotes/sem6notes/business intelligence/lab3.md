# Business intelligence
## Lab 3
### Data [Mart](?) VS Data Warehouse
- data warehouse is big
- sometimes data not easy to manage in one big thing

### Star Schema and Snowflake Schema
- going to try to use these plus fact tables in the lab
- 2 methods to create data mart
	- sql server management studio
	- data services 
- chapter 6 in the textbook: Building Foundations: creating data marts

### Data Marts
- data can come from many sources and might not be compatible with data mart
- need to analyze the data first

#### Structure
- Measures
- dimensions are used to spread measure into parts
= hierarchies are used to organize dimensions in various levels
- transactional data is the best for business intelligence?

#### For each measure
- name
- what OLTP field or fields will spply data
- ?
- Formula

#### For each dimension
- name
- OLTP field
- data type of the dimension
- name of [parallel? dimension]

### Lab
#### Create Database
1. Right Click Databases
2. New Database
3. Name MaxMinManufacturingDM
4. Options
	- Recovery: Simple
	- because it is a data mart
5. Create

#### Create Tables
1. Expand Database you just made
2. Right Click Tables
3. New Table
4. name table in Properties
5. Name columns	
	- right click column: Primary Key for primary jeys
6. Refresh Object Explorer to view new table in the side bar

#### Creating Maximum miniatures sales Data Mart using SQL server data tools
- create an Analysis Services cube using the Cube Wizard

#### SCD
- slowly changing dimension
- e.g. for Sales Person:
	- if sales person is transferred to another location
	- what happens to the reports?

- review the textbook ch 6 & 7
- compression types
