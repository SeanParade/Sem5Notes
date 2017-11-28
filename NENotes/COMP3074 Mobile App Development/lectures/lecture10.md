# Android Lecture 10 : Services
- Started Services
- Bound Services

#  Lab
- Bounded Services (odometer app)
- help with assignment 2

# Services
## Started Services
- background processes
- run continuously

## Bound Services
- bound to another component
  - e.g. an activity
- when components are no longer bound they are destroyed
- e.g. Toast, log

## Creating a Service
1. extend Service or IntentService class 
- startService -> starts the service in the background

```java
startService(intent);
```
### Started Services
1. intent is created and parameters are set
- intent is passed to the service
- service starts & handles intent
  - onHandleIntent()
	- runs in a separate thread
- 

#### Manifest.xml
- android permissions
- service set up in manifest.xml file
- exported: if service can be used for other apps


### Synchronize
-  when using mutliple threads
- costly but necessary with threads

### User Interface
- Service does not have a UI
- put the code to show Toast messages in onHandleIntent
  - use handler's post() method
  
### Notification VS Toast
- notification is sent to the service
- toast pops up on the activity

### Notification
- set attributes
  - whether it should buzz
  - what icon it should use
  - set auto cancel
  - priority
  - etc.
- will show up at the top bar

### Example Services
- LocationService

