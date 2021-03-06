# COMP3064
#### Week 2
Wed Sep 13 10:13:10 DST 2017

___

### Project Folder
Folder named after your Unity Project

#### Assets
-root asset folder
- contains all game assets
- contents visible in Project View
*You can make your own file structure for assets based on your needs*

- A file in which a Unity game depends on
- any file imported into Unity
  - imported assets refer to source files of various types(e.g. meshes, textures, audio clips, text.)
- Assets do not exist in the Scene Hierarchy
  - GameObjects do!

*Types of assets*
- Prefabs
  - reusable game object asset
  - preconfigured assets
- data files
  - plain-text files
    - human readable
	- can hold game data
	- can exists as source code or other plain text formats
  - Binary files
    - DLLs (dynamic link libraries)
  - C# scripts that contain game data
- textures
  - any imported pixel-based 2d image, regardless of its intended purpose
  - texture can be used as a sprite, an entire sprite atlas, mesh skin (UV map)
  - typical formats are png, jpeg, and psd
- meshes
  - 2d image projected(or wrapped) onto a 3d mesh
  - U and V translate to X and Y in 2D meshes
  - assets that represent 3d geometry
  - also defines 2d geometry
    - a mesh can be a flat plane with a Sprite as its applied texture
  - contain several pieces of information
    - geometry
	  -  contains data that defines geometric structure of a mesh through vertices, edges, triangles, and polygons
	- UV mapping
	- Animation & rigging
- materials
  - assets that can be attached to a GameObject's Mesh component
  - references a shader script
  - simlar to how GameObjects can contain C# script components
  - link shaders and meshes together
    - can create effects like this (water, fire, particles)
- audio and video
  - WAV, MP3, OGG
  - AVI, MOV, MPG, MPEG
  - some formats offer greater quality than others.
  - have to be wary of codecs for mp3 and avi
- Animation clips, animation controllers, cubemaps, etc...


Any file formats can be imported into Unity but only certain formats will be recognized

#### Texture Importing
- Textures used inside Unity are imported version of the source image files inside the asset folder
- Unity generates its own optimized version of imported textures (its a copy)
- the import process does no affect the original image files
- Imported textures can be assigned a type in the inspector view (e.g. Standard, GUI, Sprite)
  - relates to quality a lot of the times
#### Texture Import Guidelines
- Import the higest quality format at the largest size possible (that makes sense for your projects)
  - Largest supported size: desktop4096x4096 mobile 2048x2048
  - larger textures cause larger import times, espcially if they are compressed
  - 512x512 to 1024x1024 works for most textures
- Highest quality formats:
  - lossless format (psd)
  - high quality compressed (jpeg, png)
- use of power of two pixel dimensions for all *standard textures* (due to the algroithms used to map 2d to 3d)

#### Mesh Importing Guidelines
- Minimize polygon count
  - less polygons = less processing
  - less materials per mesh = less processing
  - fewer elements = less processing
    - combine seperate local meshes into a single mesh whenever possible to minimize game object count
#### Audio Video Import Guidelines
Two types of audio import formats
- Native (WAV, AIFF)
  - no decoding
  - greater files size
- Compressed (OGG)
  - lossy
  - less storage heavy

#### Project settings 
- Keeps track of various Unity Editor settings made for a project (e.g. layers, tags, physics settings)

#### Library (auto-generated)
- keeps track of asset linkages
- represents the non-asset part of your project
- never delete


#### Contents
- Raw Game Assets
- Unity Editor Setting
- Asset Linkages


#### Hierarchy Panel
- panel lists all objects in the scene
- all scene object are defined by GameObjects


#### Object Inspector
- Every type of asset has a range of type-specific properties
- asset properties control how all instances of the asset behave or appear in unity

#### Asset Management
- Communicating asset purpose and being able to find assets quickly

#### Asset Stores
- asset store files can be searched for inside the project panel

