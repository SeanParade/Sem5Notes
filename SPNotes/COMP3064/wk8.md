## COMP3064

#### Week 8
Nov 22 10:15:29 STD 2017

___

### Mechanim animations
- animation that allows you to build 2d/3d animation 
- allows you to control how the animation is played using state engines
- each block represents one clip
- a character should have a block for everything they can do
- every character should have an entry animation
- any state block allows you to call an animation from any state
  - e.g. character death should be able to happen from any state
- rigs need to be definied as humanoid or generic as machanim does not work with legacy character and animations.
- Avatar
  - definition for your rig. Use it to retarget animations that have the same rig
- Root Motion
  - Basic motion of your character
  - e.g. whale swimming
- You can change the thresholds of an animation with Parameters in the Animation Controller

### Quaterians
