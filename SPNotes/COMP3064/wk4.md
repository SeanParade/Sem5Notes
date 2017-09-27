# COMP3064
#### Week 4
Wed Sep 27 10:20:50 DST 2017

___

### Persistent Data
#### Game Objects that contain Scripts
#### Singleton Game Objects
- Object that only gets created once
```Csharp
void Awake()
{
	if(Instance == null)
	{
		Player.Instance = this;
		DontDestroyOnLoad(this.gameObject);
	}
	else
	{
		Destroy(this.gameObject);
	}
}
```
#### Save Data on Persistent Storage

___

### UI
- can Exist as part of screen space as well as world space
- Screen space UI provides a way to define HUD, Menus with buttons, text displaying game info, etc
- Creating can be done by GameObject > UI > (menu options)
- All UI elements will be a child of Canvas in a HUD
- Canvas element is ordered by top0down in the hierarchy

- Render Modes
  - Screen Space - Overlay
  - Screen Space - Camera
  - World Space
    - turn on a tv or monitor and interact with it
