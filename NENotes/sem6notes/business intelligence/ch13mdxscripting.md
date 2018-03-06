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
