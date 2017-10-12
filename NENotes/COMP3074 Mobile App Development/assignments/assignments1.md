# Mobile App Development
## Assignment 1
### Instructions

Develop an app for food ordering:

#### Main Screen
- Logo
- Enter button

#### Second Screen
- Types of Cuisines
  - American, Italian, Chinese, International(?) etc.
  - use RADIO buttons

#### Third Screen
- Displays restaurants from selected cuisine
  - use SPINNER to implement this list

#### Fourth Screen
- Food items from selected restaurant
  - use CHECKBOXES

#### Customer Screen
- Provide customer information
  - use EDITTEXT CONTROLS
  - OTHER UI elements
 - Customer Information:
   - name
   - address	
   - credit card number
- UNIQUE FIELDS to save:
  - create fields for e.g. favourite food, cuisine, restaurant, chef
- use VALIDATION
- use TextView to create labels for UI
- allow user to use BACK key
- BUTTON titled ORDER

#### Checkout Screen
- Display Customer and order information on the check-out screen

### Planning
#### Classes
- Order
  - restaurant name
  - list of selected items
  - customer
- Customer
  - name
  - address
  - credit card number
  - favourite dish
  - favourite restaurant
  - recommended restaurants
- Cuisine
  - name
  - list of restaurants
- Restaurant
  - cuisine
  - name
  - list of items
- Items
  - name
  - description
  - price

#### Fragments
- ItemListFragment
- RestaurantListFragment
- CuisineListFragment
