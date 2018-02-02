# COMP3064
#### Week 9
Wed Nov 29 10:17:37 STD 2017

___

### Particles
- Speicalized objects used to create particle-driven special effects
  - rain, smoke, fire, sparks, magic, etc
- Involves many small elements that come together in a large system
- Results in a swarm of individual effects that add up to a particle effect
- Comprised of emitter and particle
  - emitter emits particles
    - controls particle lifespan, their emission rate and their overall change through time
  - particle is a basic element of a particle system
    - controlled by the emitter
	- often a 2d object facing the camera
- Intended to  be used in 3d space
- can be used in 2d but have no concept of sprites
- Sorting layers cannot be set in the inspector, but can be scripted in

### Shuriken
- as game object component, particle system shows up in the inspector view for selected particle system
- contains multiple modules where parameter edits can be made
- enabling modules adds specialized behavior to the particle system
  

### Particle System v. Effect
- Particle effects contain one or more particle system components parented to the same rot
- some module properties define a change of values through time using MinMax Curves
  - MinMax curves interpolate a curve between two points. Can also be a line.
  - Interpolation is a process of filling in values between two points
  - You can add points to the curve to further edit
- Curve control can also be added to color

### Particle system
- defines overall behavior
- always present; only thing that can't be removed
- params
  - duration - of the particle system
  - looping - whther the system occurs once or loops forever
  - MORE HERE; Check Slides


#### Emission Module
- Controls particle emission rates
- Allows bursts of particles at certain moments within the particle system duration time

#### Shape Module
- Defines the shape of the particle emitter: sphere hemisphere, cone, box, and mesh
- Each shape has its own set of properties
- you can choose whether to emit from the shell (edge) of the shape  or within the volume of the shape itself

#### Velocity
- Velocity over lifetime parameters

#### Color module
- Color over lifetime params
- color by speed - etc

#### Size Module

#### Rotation Module

#### Collision Module
- only for 3d
- enables collisions with a flat plane or scene collider
- Flat plane
  - very effecient
  - planes are defined by a game object Transform
- MORE HERE; Check Slides

#### Texture sheet animation module
- enables particles to have an animated texture
- concept similar to how spritesheets work
- texture sheet is divided into a grid of tiles
- Cycles property defines the animation speed
- More cycles means faster animation
- frame over time property alters the animation

#### Render Module
- controls how a particle is drawn on the screen
- render mode specifies the shape ...

#### Particle Material
- The same principle applies for particles as it does a 3d Mesh ...
- Particles renderer module therefore requires a material in order to draw a particle
- this means you must have a defined material asset in your project
- this also means you cannot use a sprite


#### Scripting
- your script must have a reference to a ParticleSystem component
- if the particle effect uses multiple ParticleSystems...

