# COMP3073
#### Week 3
Tue Sep 19 10:09:16 DST 2017

___

### Layouts
- LinearLayout
  - Compnents are placed either horizontally or vertically
  
- When an activity is prepared, it is called `inflation` of the layout


### Intents
- Two activities can be linked together by an `intent`
  - An intent is a class that provides intent objects which is an object used to link activities together
```Java

// we are currently in the OnlineGamingActivity
	 Intent nextActivity = new Intent(MainActivity.this, OnlineGamingActivity.class);
	 nextActivity.putExtra("User",1); //Passes parameter (typically user-defined) to the next activity
	 startActivity(nextActivity);

	c1 = new GamingCharacter("Ninja");
	MyObject myCharacters

```

- If you need more complex objects to be passed you make a list and then call the object from that list 
```Java
  GamingCharacter c1 = MyObjects.myCharacters.get(0); // where myCharacters is a list of character objects
```

### Event Handler

```Java
public void onClick(View v){
	RadioButton rbOnline = (RadioButton) findViewByID(R.id.rbOnlinegame); // gets the element and stores it in rbOnline
	
	
}
```

### Assignment 1
- Graded on layout and Java code
- partial weight on design
- naming conventions are important
- must be able to run on lab computers
- Code should be as simple as possible
- No code reuse from examples

#### Review
- an App is a chain of Activities
- Activities have layouts in XML
