# Mobile App Development
## Week 4 Lecture 4
### Building User Interface for Android Mobile Applications

- fragments: reusable parts of an activity
- activity has one or more fragments
- each fragment has a life-cycle and behaves much like an activity would

#### Fragments
- introduced with Android 3.0 Honeycomb
- divide activities into components "fully encapsulated"
- come with standard references and methods

##### Example
- WorkoutListFragment VS DetailListFragment
- only one has it's own layout
- both have their own Java Classes
- WorkoutListFragment does not have it's own UI
  - 

#### User Interface
- can add UI to Fragment

#### Creating A Fragment
- extend Fragment Class
- define UI
- implement funcionality
- assign UI to gragment
- override the onCreateView handler

##### LifeCycle
- starts lifecycle with onAttach -> onCreate, onCreateView, onActivityCreated
- Created -> Visible -> Active

##### Fragment Manager
- getFragmentManager method
- methods to access fragments added to the Activity
- add, remove, replace fragments

- itemClicked
- why is fragment accessed here instead of in the class?
  - only accessed once

### Next Week
- start with data storage

### Styles and Themes
- mystyle XML document
- styles can be inherited

### Review Lecture 3
- Declaration of Application Resources
  - declare resources in XML file
- Common files
  - dimens.xml
  - strings.xml
  - colors.mxl
  - drawables.xml
- Android UI
  - View, superclass of UI
  - ViewGroup
    - container, holds views
- Android Layout classes
  - LinearLayout
  - FrameLayout
  - RelativeLayout
  - TableLayout
  - ScrollView
- Simple UI controls/ event handling
  - res/layout
  - findByViewId
  - onClick attribute
- android.widget package
  - TextView
  - EditView
  - etc.
- Menus
  - res/menu XML file
  - onCreateOptionsMenu method
  - onOptionItemSelected method
  - programmically create

#### Designing UI with Views
     - define UI elements
     - event handling
     - handling threads
