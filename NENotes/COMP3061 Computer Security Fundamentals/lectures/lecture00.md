# COMP 3064 Game Development
## Review for Quiz 1

### Week 1 - powerpoint 1

#### Unity
     - suite of technologies and tools to create software products ie. games

#### Games
     - objective engine
     - set of rules and objectives
     - interactive, increasingly challenging
     - "Soft real-time interactive agent-based computer simulations"

##### Simulations
     - real or imaginary world modelled mathematically

##### Agents
      - entities:
      	- vehicles
	- characters
	- weapons
	- power-ups

##### Interactive Temporal Simulation
      - dynamic world state
      - changes over time
      - responds to player's input

##### Real-Time
      - process information and respond within time period
      - graphics respond to user in real-time

#### Deadlines
     - e.g. 30 frames per second
     - non-catastrophic (deadlines can be missed)

#### Successful Games
     - Engaging
     - Entertaining
     - Enjoyable
     - Elastic
     - Expandable
     - Social

#### Audience
     - adjusting controls
     - modify characters
     - save settings

##### Audience Types
      1. Killers
      - Achievers
      - Socializers
      - Explorers
      	- there is overlap between the types

#### Game Abbreviations
     - FPS : First Person Shooter
     - SHMUP : Shoot 'em up
     - TPS : Third Person Shooter
     - MMO : Massively Multi-player Online
     - RPG : Role Playing Game
     - JRPG : Japanese Role Playing Game
     - SRPG : Strategy Role Playing Game
     - RTS : Real Time Strategy
     - RTT : Real Time Tactics
     - TBS : Turn-based Strategy
     - TBT : Turn-based Tactics
     - SIM : Simulation
     - FMV : Full Motion Video

#### Game Engines
     - build on past engines
     - e.g. Doom
     - data-driven architecture
     - separation between core components and art, levels, gameplay

##### Benefits
      - minimal changes to core system
      	- fast prototyping
	- user Generated content
	- built-in scripting to customize behaviour
	- portable

##### Architecture
      | Game Specific Rendering | Game Cameras | HUD | AI | Player Mechanics|
      |Visual Effects 		  | Front End | Gameplay Foundations| Audio|
      |Low Level Renderer 	    | Collision & Physics |	      HID |
      | Resources |
      | Core Systems |
      | Platform |

#### Game Loop
     - Draw Frame
     - Gather Player Input
     - Update World State
     - Apply Game Logic
       - (cycle) > Draw Frame

#### Game-Time
     - independent timeline for game functions

#### Elapsed Time
     - governing the frame rate
       - measure duration of current frame
       	 - sleep until next frame
	 - call render

#### Unity Engine Tech
     - 3D Graphics Engine
     - Physics Engine
     - Scripting
     - Audio, Animation, Lighting, Particles...

##### Physics Engines
      - 2D : Box2D
      - 3D : nVIDIA's PhysX
      - calculated on each "tick"
      	- fixed-rate

##### Scripting
      - Unity API	
      	- script code that listens to logic events
	- engine reports events
	- code acts on events to modify the game state
	- uses C#

##### Tools
      - Unity API
      - MonoDevelop
      - Unity Editor
      - Asset Store

###### Editor
       - tools to combine assets
       - cannot use like Photoshop
       - can extend to create assets
       	 - Editor Scripting
	 - plugins availble at Unity Store to achieve this

#### Asset Store
     - download store products
     - assets
       - extensions
       - scripts
       - textures
       - audio
       - complete projects


### Week 2 powerpoint

#### Project Folder
     - named after Unity folder
     - contains:
       - Assets
       	 - all game assets
	 - root asset folder
       - ProjectSettings
       	 - track Unity Editor settings
	   - layers
	   - tags
	   - physics settings
       - Library, Temp
       	 - auto-gen
	 - track asset linkages
	 - non-asset part of project

##### Asset
      - file that game depends on
      - imported into Unity
      - exists inside Assets folder
      - typically created with another application

###### In Scenes
       - meshes
       - textures
       - audio clips
       - text
      - Assets do not exist in Scene Hierarchy
      - GameObjects reference Assets

###### Types
       - Prefabs
       - Data files
       - Textures
       - Meshes
       - Materials
       - Audio/video
       - Animations

##### Other Files
      - e.g. Word files
            - game design documents
      - binary files
            - DLLS
      - Unity will not process unrecognized file formats

####### Prefabs
	- reusable GameObject asset
	- copy of GameObject's state in the scene
	- can instantiate GameObjects
	- GameObjects retain link to prefab
	- Changes applied to prefab are applied to all GameObjects of this prefab
	- GameObject can break away from link

##### Data Files
      - store game data
      - types:
            - Plain-Text
	    - Binary Files
- Data formats:
  - CSV (comma separated values)
  - JSON
  - XML

###### Source Code Data files
       - C# scripts with game data
       - variables & constants
       - data structures

##### Inspector View
      - some C# data structures can be edited in Inspector View
      - e.g. speed of plane from lab

##### Texture Assets
      - sprite
      - sprite atlas
      - mesh skin (UV map)
      - formats:
      	- PNG (transparency)
	- JPEG (opaque)
	- PSD (photoshop)


#### Sprite
     - 2D game graphic
     - GUI element

##### Sprite Atlas
      - bunch of sprites on single texture
      - referenced separately
      - animated sprites

##### Mesh UV Map
      - 2D image wrapped onto 3D mesh
      - U = X V = Y
      - "skin"

##### Mesh Asset
      - rep. 3D geometry
      - def. 2D geometry
      	- can be flat plane
	- formats:
	  - FXB
	  - 3DS
	  - MAX
	  - MA
	  - BLEND

###### Channels
       - channel = piece of information
       - Geometry
       - UV Mapping
       - Animation

##### Material
      - can be attached to Mesh Component
      - Shader script
      - link shaders + meshes

##### Shaders
      - take inputs that define:
      	- Textures
	- Numerical Values
	- Color Values

##### Audio & video
      - WAV, MP3, OCG
      - AVI, MOV, MPG, MPEG

##### Texture importing
      - Unity gens optimized versions of textures
      - does not affect original files
      - can be assigned a type:
      	- Standard
	- GUI
	- Sprite

###### Guidelines
       - Highest quality format for largest size possible
       - 4096 * 4096 , 2048*2048
       - larger = longer import
       - 512 * 512 | 1024*1024 reasonable
       - large sizes = sprite atlas

