# Game Development
## Resume after strike
### General Notes
- we will not build a full 3d game level due to time constraints
- from now on, lectures and labs will depart in content
- the midterm will be next week in the lab
  - practical
  - based on sidescrollers (e.g. assignment, lab work)
  - open-book
  - will get basic framework for the game & list of requirements
  - all assets will be provided
  - may be asked to create scripts, write code
- assignment deadline = this Friday
  - submit on blackboard or send link to gitHub
- next assignment:
  - group assignment
  - using physics
  - multiple levels
  - UI

## Week 9 Lecture
- Mecanim Animations
- Quaterions (?)

### Animations : Mecanim
- allows you to build animations
- controls how animations are played
- can have complex state engine controlling animations
  - in diagram: each block = 1 click = 1 animation
  - animations for Idle, Walking, Jumping, etc.

> Mecanim is Unity's animation state machine system

#### When to use Mecanim
- imported .fbx character with a rig
- mesh & rig can be any type
- rig will need to be defined as *humanoid* or *generic*
  - in order for Mecanim to work
  - optimization methods built into humanoid

#### Mecanim Parts: States
- **blendtree** : blend between similar motions

#### Transitions
- time based; parameter based

#### Parameters
- control what happens in animation from *outside*
  - change parameters, allow controller to decide
- HSpeed, VSpeed = float
- Sprint, Airm, Move = boolean
- Fire = Trigger (circle)

#### Layers
- animation layering
  - e.g. separate layer for facial animation

#### Animation Avatar
- defintion of your rig
- define as *humanoid*
  - can refer to body parts e.g. "left arm"

##### Defining new Avatar
1. .fbx import with mesh
- create new avatar
- import animations on that character as skeleton
  - copy avatar from *T-pose*
 
<hr>
# Breaktime
<hr>

### Quaternion
- represents rotation
- x, y, z, w
- you don't need to access directly
- need this as a data structure in your code to have rotations
- set up using camera, have quaternion created using that
  - when translations : functions are used to make transformation

#### Functions
- Quaternion.LookRotation
- Quaternion.Angle
- Quaternion.Euler
- Quaternion.Slerp
- Quaternion.FromToRotation
- Quaternion.identity

