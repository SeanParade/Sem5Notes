# COMP3064
#### Week 5
Wed Oct  4 10:07:34 DST 2017

___

### Animations
- animation in 2d are built out of frames showing characters in different poses
- uses keyframes to transition 
- can use transform as well to animate
- Animations are controlled by an animation controller 
#### Mecanim
- Animation view 
- animation controller
#### Scripting
- animation and transition conditions
- more coroutines
- more unity API
#### Inspector View
- Options for your animation
#### Animation controller
- Contains one or more state machines that determine which animation is currently being played
- state animation is made up of states, transitions and the triggered conditions for each transisiton
- transition from start to default is automatic
- booleans remain true while triggers are flagged true and once the controller notices the flag is true, the value is consumed and returned to false
- Sample Rate sets how many frames make up a second of animation
- transitions are for switching from one state to another
- Adding a Curve is adding an association with a parameter that controls the animation
- Adding an event triggers something on a key frame
- anyhting can be triggered from an animation
##### Inspector
- Speed
- Motion
  - animation sequence
#### Animator Scripting
- Declare a reference to the animator component
  - `Animator anim = this.gameObject.GetComponent<Animator>();`
- pass values to the Animator parameters using the set method
- which set depends on the parameter
### Game Design
- Sketch the following:
  - core game mechanic, including a level concept if applicable
  - rough back story with the main characters
  - list of items, powerups, or other things that modify the character mechanics or environment if applicable
  - a rough sketch of the graphics style based on the backstory of the characters
  - sketches of all the screens involved, diagrams, of transitions between screens, and transition triggers
