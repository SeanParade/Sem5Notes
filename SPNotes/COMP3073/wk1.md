# COMP 3073 
# Intro
#### Week 1
___

>Ilir Dema
>Office: C467
>Email: ilir.dema@georgebrown.ca

### About
Course provides students with hands-on experience in developing and deploying wireles applications on mobile platforms with strong emphasis on Andriod. 
- Language content in mostly Java
- Some HTML and CSS

### What is covered

#### Android
- Android infrastructure and dev environment (Android SDK 26)
- Activities and services
- User interface: Views
- Persistent Storage: SQLite
- Location Service: GPS and Maps
- Web and Javascript
- Signing and publishing the app
#### HTML
HTML + CSS + JS

### Marking scheme
- Assignments: 3 x 15% = 45%2
- Project: 25%
- Final Test: 30%

### Textbook
>"Don't bother, its outdated. Just google everything"

___

### What is Android
- Free open-source operating system
- based on linux
- A component-based architecture
- Isolation of applications increasing
- Supports for 2D and 3D graphics

### Why Android
- Its free
- Google Support
- No certification required to publish
- Google play is free, upfront purchase, and in-app billing options
- No approval process required for application distribution

### Architecture
- Linux Kernel
 - Drivers
 - Power management
 - Virtual machine
- Android Runtime
 - Core Libaries
 - Dalvik Virtual Machine
- Libraries
 - Surface manager
 - media framework
 - SQLite
 - FreeType
 - Webkit
 - SGL
 - SSl
- Application Framework
 - Activity Manager
 - Window Manager
 - Content Providers
 - View System
 - ... others
 
### Developer Studio
#### Hello World
- Every Android app must have an activity
- You can start with an empty activity template
- ActivityName will be the name of the Java Library you are creating
- Each activity should have its own java file relating to the activity
- Second category of classes are test classes for testing your app
 - the naive way of testing is running the app on an emulator and manually test each portion
  - this is bad and doesn't actually provide you with a safe and working app
 - The right way is to incorporate unit testing (will be covered)

- When an activity gets created, a common thing to do is to load user preferences and load local storage (database)
 - Creation stage is for preparing the application for the user
 - loading storage, location, connections, user preferences
-Every Activity has a layout stored in the resources 

```Java

package domain.you.created.helloWorld

public class MainActivity extends Activity {
  @Override
  protected void onCreate(Bundle savedInstanceState){
    super.onCreate(savedInstanceState); // data from last exit
	setContentView(R.layout.activity_main);  // grab and use the xml layout file "activity_main"
  }
}
```

#### XML
- Application node holds all the activity nodes and security nodes
 - Essentially a header for the application

