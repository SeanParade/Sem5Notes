# Business Intelligence
- professor has been replaced?
- everything that we said we were going to learn, we are not going to learn
- this is terrible
- life is pain

## Data Warehouse Logical Design
- normalize data
- no redundance

### Example
- Manager and Employee
- make one table
- in the employee have a FK to another employee that is manager
- "self-join"

### Organization
- about speed of access

#### Star Schema
- dimensions = tables
- in middle of star is a fact table with all the keys in the star
- get reports quickly using these linked dimensions
- dimensions are denormaized into single tables

#### Snowflake Schema
- fact table connecting dimensions
- tables are dimensions
- dimensions are normalized into multiple related tables

#### Hybrid approach
- e.g. partially normalized dimensions
- some de-normalized tables?

### How do you connect multiple star schemas in a data warehouse?
- A: through **shared dimensions**

