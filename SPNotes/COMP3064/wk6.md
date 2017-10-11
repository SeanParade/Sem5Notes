# COMP3064
#### Week 6
Wed Oct 11 10:14:14 DST 2017

___

### Physics
#### Physicis material
- Physics material desccribes how to handle colliding object
  - friction 
  - bounciness 
- variables
  - bounceCombine
  - bouncines
  - dyanmicFriction
  - frictionCombine
  - etc

You are able to combine different physics and choose how they interact to each other

### Line Casting
```csharp
RaycastHit2D Linecast( Vector2 start, Vector2 end,
                       int layerMask = DefaultRaycastLayers,
					   float minDepht = -Mathf.Infinity,
					   float maxDepth - Mathf.Infinity);
```

- start - start point of the line in world space
- end - same but end
- layerMask

- Where to use
  - detecting enemies
  - shooting
  - follow player
  - detecting if player is grounded

### Coroutine
- coroutines allow you to step out of a function and continue on the next cycle
  - example: if you write a loop to fade out an object, the fade would complete in two frames. Using a coroutine slows down the process
    - additionally, you can use delay `WaitForSeconds(timeFloat)` to further slow a process.
- used for closing/opening doors, spawning delay, checks, etc

___

### Midterm Review
- you will be given a project to work with
- open book
- asset management
  - import
  - configuration of asset
- Creating prefabs
  - creation, updating, organization
- Scripting
  - *naming conventions*
  - use camelCase
  - name of class and file must be the same
  - know methods Start, Awake, Update, FixedUpdate
  - OnCollision......2D/ OnTrigger......2D
  - Input
    - GetKey vs GetAxis
  - Transfrom
    - rotation
	- position
	- scale
- Physics
  - required components
    - rigidbody2d
    - collider2d
  - Trigger or not
  - Kinematic or not
- Scripting and UI
  - *Singleton (Definitely on test)*
  - Building HUD and counting points/health
  
