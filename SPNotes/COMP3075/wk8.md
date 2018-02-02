# COMP 3075 
#### Week 8
___

### Data persistence
#### Main options
##### Shared Preferences
- the amount of data saved is limited
- Supported data types
  - boolean, float, integer, long, string
- Cannot share outside of the package
- stored as key/pair values
> Make an Instance of `SharedPreferences`. Create a `.Editor` to modify the preference content 
- Individual activities can have there own private preferences. Unshared between activities
- Activity only gets one group of private preferences
> load external xml preferences with `addPreferencesFromResource(R.xml.myapppreferences);`
##### SQLite
- 
##### File i/o
