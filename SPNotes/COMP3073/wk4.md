# COMP3073
#### Week 4
Tue Sep 26 10:10:17 DST 2017

___

### Building user interface with for Android Mobile Applications

- Fragments: reusable parts of an activity
- activity has one or more fragments
- each fragment has a life-cycle and behaves much like an activity would

#### Fragments
- introduced with Android 3.0 Honeycomb
- divide activities into components "fully-encapsulated"
- have layouts and class files just like activities
- Becomes part of the activity life-cycle on attachment
- Once there are no pointers to the fragment, it is available for garbage collection
- Each activity includes a Fragment manager
  - accessible by the `getFragmentManager` method
  - provides methods to access the fragments
  - object that gives you a collection of the fragments

#### Building Fragments
- You extend the fragment class and optionally define a UI and implement the functionality it encapsulates
- override the onCreateViewHandler

#### example
- WorkoutListFragment vs DetailListFragment
- only one has its own layout
- both have their own java classes
- the fragment class looks very similar to the activity class