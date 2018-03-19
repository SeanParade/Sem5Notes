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





