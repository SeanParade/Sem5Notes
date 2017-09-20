# COMP3064
#### Week 3
Wed Sep 20 10:12:52 DST 2017

___

### Scenes
#### Scene Transition
- Scene must be added to the build settings
- First scene (index) in build settings is *starting scene*
- Startings scene don't require a transition
- Scene names matter as you reference them when doing transitions

## Unity API ##

```Csharp
/*
* Object Creation
*/

// new game object
GameObject myGameObject = new GameObject();

// or using template
GameObject.Instantiate(myGameObject)

// instantiate from prefab
public class MyScript : Monobehavior
{
	public GameObject someprefab;

	void Start()
		{
			GameObject.Instantiate(somePrefab);
 		}
}


// Getting scripts

RotationController rc = gameObject.GetCompontent<RotationController>();
rc.speed = 15;

// adding scripts

this.gameObject.AddComponent<ScriptType>();

this.gameObject.AddComponent<RotationController>();

```
### Script Components
- Can have references between each other
- Sibling Relationship in on GameObject
- Hierarchical Relationship between child-parent game objects
- Indirect relationship - reference from another hierarchy in the scene
- Pretty much anything can be done from script

___

### Collisions and Audio
- Unity supports both 2d and 3d physics
  - seperate physics simulations
  - 3D physics engine built on top of nVIDIA's PhysX
  - 2D physics engine built on top of Box2D
- Physics are calculated each *tick* not each frame

#### 3D Collision
- Rigidbody
  - Enables physical behavior for a game object
  - places its game object under the control of the 3D physics engine
    - game onject immediately responds to gravity
	- the game objet is effected by collisions with other objects in the scene
  - At least on Rigidbody is required in an collision between two or more object
- Collider
  - BoxCollider, SphereCollider, CapsuleCollider
  - MeshCollider
#### 2D Collision
- Same-ish but 2d 

#### Froces vs Transform
- Rigidbody component takes over the movement of its game object via a physics calculation
- Applies forces to push the object, letting the physics engine calculate the results
- Should be dones for all non-kinematic or physics-driver Rigidbody/Rigidbody2d components
- Transform can be in local or world space
- forces are applied in world space direction
- to transform a local space direction to world space
  - `Transform.TransformDirection(Vector3 local Direction)`
### Colliders
- PolgyonCollider and MeshCollider are the most expensive as you ar calculating a series of shapes instead of one shape
- compound colliders are the most common in 3d gaming
  - a series of simple colliders tied to gether that roughly mimcs the shape
  
### Triggers
- Triggers are colliders
  - IsTrigger Property set to true for collider components
### Rigidbody2d
- Uses mass to understand its collision bondary
- angualar drag is for drag
- Gravity is Earths gravity=1
- fixed angle means that rotation will not happen on collision
- is kinematic means you don't respond to forces
