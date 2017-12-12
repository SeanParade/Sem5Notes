# Advanced User Experience
- using Bitmaps, getting data from sensors
- how do we draw components using XML?

## Drawing app
- detecting touch
- detect remove touch
- multiple fingers
- generate vectors (direction where player is moving)
- SensorManager : Accelerometer
- Paint object: color and width of line
- Path objects store data : Canvas -> draw lines into Bitmap

### UI
#### Look and Feel
- customization within the app
- keeping in mind the size of most phones
- for doodle app: how to select colors to use (SeekBars?)
- menu options should be intuitively clear
- consistency : for color and brush size, the sliding bar is used to select
- check screen size : orientation landscape for large screens

#### Performance
> when app is paused, the listeners for sensor events should be removed; save battery etc.


