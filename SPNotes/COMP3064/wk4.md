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
	if(Instance ==null)
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

