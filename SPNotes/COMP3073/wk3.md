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

### MVC
- Model
  - Controller as a reaction to the event notifies the model
  - model is updated and sends the information to the View to refresh (invalidate)
- View
  - Applications feedback to the user
  - portion of application resposible for rendering the display
  - represent a rectangular area on screen completely within the rectangular area represented by its parent on the tree
  - root of this tree is the application window
- Controller
  - Portion of an application that responds to external actions
    - keystrokes, screen taps, incoming calls, etc
  - System maintains a queue of events and removes events in order and dispatches them

### GUI Components
#### Views
- TextView 
  - is for display only
  - can be used as a label or as a way to present text without an option
  - can change height, width, font, color (f+b), etc.
  - Non standard properties:
    - autoLink 
	  - if true, findes URLs in the displayed text and automatically converts to clickable link
	- autoText
	  - if true, finds and corrects simple spelling errors in the text
	- editable 
	  - if true, indicates that the program has defined an input method to receive input text
	- inputMethod
	  - identifies the input method
	- inputType
	  - specifies the type of input (e.g. phone no, email, password)
- EditText
  -  predefined subclass of TextView that includes rich editing capabilities
- Button
  - button printed with some text to identify it, that the user can click to invoke some action
- ImageButton
  - button with an image on it rather than one with text
- Adapters
  - has two resposibilites
    - find the data object that corresponds to a particular index
	- supply a view through which the data at a particular index can be displayed
  


#### Assignment 1
- Graded on layout and Java code
- partial weight on design
- naming conventions are important
- must be able to run on lab computers
- Code should be as simple as possible
- No code reuse from examples

#### Review
- an App is a chain of Activities
- Activities have layouts in XML
