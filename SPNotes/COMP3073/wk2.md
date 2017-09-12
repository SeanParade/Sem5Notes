# COMP3073
#### Week 2
Tue Sep 12 10:08:27 DST 2017

___

### Creating Applications and Activities
- Each app will create at least one activity
- Each activity has components
 - XML layout for GUI
 - Java Code for activity


- In the case that a foreground activity needs resources that aren't available due to an application using them, the foreground application will take priority over the the background app to improve user experience
 - _i.e. if you get a phone call while using the map app the phone call service will take whatever resources since it has priority_


#### Manifest file
- AndroidManifest.xml
- holds the main XML nodes

#### Unser INterface
- resources hold other xml resources that resemble variable data. (strings, colors, etc)
##### HOW
- declarative - statically declare the interface in XML
- procedural - use code to dynamically create the user interface
- mixed - both

#### XML advice from Google
- xml is often shorter and easier to understand than procedural generation

#### Elements 
- Layout
 - ViewGroup
  - View
  
- Layout
 - a container for views and view groups
 - commonly used
  - FrameLayout - All children start at top left
  - LineaLayout - children in single column or row
  - RelativeLayout - children in a relative position to each (MOST COMMON)
  - TableLayout - Grid system
  - AbsoluteLayout - pixel definitions of spacing

#### Android Application Life Cycle
- in Java, your application starts in the `main`
- in Android it starts in `Activity`

##### Lifecycles stages
 - activity created `onCreated()`
 - activity started `onStart()` - visible
  - UI elements loaded
 - activity resumed `onResume()` - visible
  - user can interact on this stage
 - activity paused `onPause()` - partially visible
  - can be resumed from here
  - any paused activity can be killed if resources are needed
 - activity stopped `onStop()` - hidden
  - can be restarted from here `onRestart()`
 - activity destroyed `onDestroy()`
 
##### Intent
> intent is a mechanism for describing a specific action, such as pick a photo, phone home, show map

- How to use
 - an instance of intent class is created and parameters such as action, category, and data are set.
 
``` Java
Intent downloadIntent = new Intent(this, DownloadService.class);
downloadIntent.setData(Uri.parse(fileURL));
//start intent code here
```

#### Design Advice
- beautiful surface, carefully placed animation or a well-times sound effect is a joy to experience
- allow people to directly touch and manipulate objects in your app. It reduces cognitive friction
- people love to add personal touches because it helps them feel at home an in control
- Learn peoples preferences over time. Place previous choices within a comfortable distance in selection. (search history popping up in a URL after you type a letter)
- Simple is better
- use short phrases with simple words.
- consider using pictures instead of words to explain ideas
- take your best guess and act rather than asking first. Allow for an undo though. too many choices upset users, but not having access to a *back* or *undo* is annoying
- Break tasks in to small digestible chunks. Show as little information as you can to get the job done. Users are easily overwhelmed
- Make places in your app look distinct and use transitions to show relationships among screens
- Remember user preferences and inputs when necessary (I shouldn't have to enter my card info all the time)


#### Definitions
- Activities - Your application's presentation layer.
- Services the invisible workers of your spplication
- Content Providers - manage persistent application data and interact with SQL databases
- Intents - a powerful interapplication message-passing framework
- Broadcast Receivers - They enable you app to listen for intents that match your criteria
- Widgets - visual components added to your device home screen
- Notifications - they allow you to alert users to various events without interrupting the current activity.
- Inent - mechanism for describing a specific action, such as pick a photo, phone home, show map
