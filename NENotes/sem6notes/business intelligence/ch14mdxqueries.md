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