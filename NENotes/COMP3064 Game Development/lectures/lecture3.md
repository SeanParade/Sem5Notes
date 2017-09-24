# Game Development
## Lecture 3

### Todays Content
	- Scene transitions
	- GameObject hierarchies and transformations
	- GameObject component scripting

### Scene Transitions
	- scenes must be added to **build settings**
	- **first scene** = index 0 = starting scene
		- no initial transition
	- scene names referenced in code for transitions

#### Obsolete Information About Scenes
	- Application.LoadLevel("SceneName")
		- this will no longer compile

### Game Object Transform
	- wrapper
		- common interface for all objects appearing in the scene
		- all of them are GameObjects
	- **translation**, **rotation**, **scale**
	- without Transform cannot be defined in a scene ; cannot exist


#### Hierarchy
	- relative transform space bewtween GameObjects inside a hierarchy
	- child GameObjects inherit parent's 

#### Root & Container GameObjects
	- top level containers of other GameObjects
		- sometimes an empty Object
	- allow child game objects to be transformed all at once
	- e.g. the 'Room' we made in lab
	- see Powerpoint for example images

### Unity API
	- creating an empty GameObject:
		- drag and drop to the scene
		- programmically 
			- new GameObject("GameObjectName");
			- GameObject myGameObject = new GameObject();
			- using a template:
				- GameObject.Instantiate(myGameObject);
				- replicate something in scene
				- use a Prefab

#### Get a Script from GameObject
	- gameObject.GetComponent<ComponentName>();
		- e.g. <RotationController>
		- returns null if does not contain this
	<csharp>	
		RotationController rc = gameObject.GetComponent<RotationController>();
		//check if rc is null first
		rc.speed = 15;
	</csharp>

#### Add a script
	<csharp>
		this.gameObject.AddComponent<ScriptType>();
		//check powerpoints for the rest
	</csharp>

#### References
	- sibling relationship in one gameObject
	- Hierarchical relationship
		- parent-child
	- Indirect relationship
		- referenced from another hierarchy
	- *scripts can be **called** **added** **retrieved** **removed** **activated** **deactivated**
		- at runtime by other scripts

### Physics Engine
	- 2D Box2D
	- 3D nVIDIA's PhysX
		- physic calculation is calculated each **tick**
		- fixed-rate

#### 3D Collisions
	- Rigidbody
	- Collider:
		- BoxCollider, SphereCollider, CapsuleCollider
		- MeshCollider
		- independent from the visual aspect
		- e.g. wall will have a collider aligned with the wall object

#### 2D
	- Rigidbody2D
	- similar Colliders

#### Rigidbody(3D)
	- makes the gameObject with Rigidbody subject to physical calculations
		- physical behaviour for gameObject
		- will respond to gravity
		- effected by collisions with other objects
	- at least one is required for a collision between objects
		- other objects can have just the Colliders
	- recommended for *dynamic* objects
		- objects that react to a static environment

#### Forces VS Trandform
##### Forces
	- Rigidbody takes over movement of the object using physics simulation
	- apply forces to push the object -> physics engine calculates result
		- ie. instead of move object from this position to that position,
		"push" the item, and physics engine figures the rest out
	- non-kinematic


##### Transform
	- can be applied in local or world space
	- forces are applied in **world space direction**
	<csharp>
		//transform local space direction to worls space
		Transform.TransformDirection(Vector3 localDirection)
	</csharp>
	<csharp>
		Vector2 worldForwardDirection =
			this.transform.TransformDirection(Vector2.up);
		//apply force in dir that rocket is facing
		float force = 10;
		this.rigidbody2d.AddForce(worldForwardDirection * force);
	</csharp>
	- force is always applied to the rigid body, not the gameObject
	
#### Kinematic Rigidbody

#### Colliders
	- add some extra calculations to physics engine
	- easier to calculate simple shape vs. complex shape
		- math is simple to find the overlap
		- find a simple shape closest to the original shape
		- can use polygons to make up the shape (PolygonCollider)
			- Mesh and Polygon Colliders are most expensive

##### Compound Colliders
	- breaking down complex shapes into compound simple shapes

##### Static Collider
	- no Rigidbody, but has a collider attached
	- stationary objects e.g. walls

##### Dynamic Collider
	- both Rigidbody and collider
	- most expensive
	- completely affected by physics engine
	- can collide with another collider

##### Kinematic Rigidbody Collider
	- isKinematic = true
	- not affected by forces or collisions

#### Triggers
	- e.g. detecting entering a room; lights turning on
	- detect collider intersections
	- IsTrigger property set to **true** for Collider component
	- ignored by physics engine
	- can pass through other objects
	- report when intersected by another collider
	- e.g:
		- automatic sliding door
		- picking up coins

#### Rigidbody2D
	- respond to 2D physics
	- limited to XY
	- can rotate around Z axis

##### Properties
	- Mass:
		- uses area of sprite to indicate mass
	- Linear Drag
		- friction
	-  Gravity Scale
		- can be negative to float objects
	- Fixed Angle
		- object will not rotate when colliding with other objects
	- isKinematic
		- by default not checked (subject to gravity)

##### Functions Using
	- OnCollisionEnter() / OnCollisionEnter2D()
	- OnCollisionStay() / OnCollisionStay2D()
	- OnCollisionExit() / OnCollisionExit2D()

#### Scripting Colliders
	- make contact - enter
	- sliding ob object - stay
	- lose contact - exit

#### Triggers Scription
	- OnTriggerEnter() / OnTriggerEnter2D()
	- OnTriggerStay() / etc
		- can move through object
	- OnTriggerExit / etc
	- *capitalization matters*


### Audio
	1. AudioListener
	- AudioSource

#### AudioListener
	- acts like a microphone
	- can have multiple but only one can be active

#### AudioSource
	- plays back an audio clip
	- can have more than one
	- controller for stopping or starting playing a music clip

 