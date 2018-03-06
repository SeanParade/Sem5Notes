# Mean Stack Front To Back
## Overview
- authentication
- local database
- use Node.js / Express = REST API
- passport jason web token
- CORS - cross origin resource sharing
- Mongoose ODM
- Angular 2/ Angular-CLI = front end
- Angular Router, HTTPM Module
- Angular2-JWT - check if token has expired
- Auth Guard = authentication
- Angular Flash message module = popup notifications
- deploy application (heroku)

<hr>

## Video 2 Express Setup and Routes
### Start
- need node.js installed
- need mongodb installed
- run mongod.exe
- run mongo.exe
- run npm init in project folder
	- creates a package.json file
- entry point app.js

### package.json
- add start script
- add dependencies
	- mongoose
	- express
	- bcrypt.js
		- using this instead of bcrypt because bcrypt has a bunch of dependencies
	- cors module
		- can make requests even from different port
	- jsonwebtoken
		- generate web token
	- bodyparser
	- passport
		- passport-jwt
		- allows to create a login strategy using webtokens

### set up dependencies
- run npm install

### app.js
- main server entry point file
- bring in all modules that we want using require
	- express
	- path
		- core module, not a dependency
	- bodyparser
	- etc.
- initialize app variable with express
- create variable for port you want to use
- call listen on the app variable
- can use callback

```javascript
const app = express();

const port = 3000;

//start server
app.listen(port, ()) => {
	console.log('Server started on port'aport);
});
```
- this will give an error because there is no route to the home page
- can use nodemon (npm nodemon)
	- watch app, when changes are made will make changes

```javascript
//route to homepage
app.get('/', (req, res)=> {
	res.send("Message here to display on home");
});
```
- call cors middlware

#### Users

```javascript
const users = require('./routes/users');

//anything that is /users will go to that users file
app.use('/users', users);
```

#### Routes: users.js
- all of users routes

```javascript
const express = require('express');
const router = express.Router();

//Register route
router.post('/register', (req, res, next) => {
	res.send('REGISTER')
});

//Authenticate
router.post('/authenticate', (req, res, next) => {
	res.send('AUTHENTICATE')
});

//Profile
router.get('/profile', (req, res, next) => {
	res.send('PROFILE')
});


//export router
module.exports = router;

```
- set static folder

```javascript
app.use(express.static(path.join(__dirname, 'public;')));

```
- create a folder on your side called public to match

#### Connect to database
```javascript
//connect to database
mongoose.connect(//here where to connect to);
```
- create a config folder
- create a file database.js

##### database.js
```javascript
module.exports = {
	database = "mongodb://localhost:27107/dbname",
	secret = "your secret"
```
- need to require this file in the app.js file

```javascript
mongoose.connect(config.database);

//success message
mongoose.connection.on('connected', () => {
	console.log("connected to database"+config.database);
});

//error message
mongoose.connection.on('error', ()=> {
	console.log("database error"+error);
}):
```

<hr>

## Video 3: User Model and Register
### Creating Model for User
- create a folder called models
- create a file inside called user.js
- require mongoose
- require bcrypt.js for encryption
- require config file

```javascript
//create a schema
const UserSchema = mongoose.Schema({
//define attributes
name: {
	type: String
	},
email: {
	type: String,
	required: true
	},
username: {
	type: String,
	required: true
	},
password: {
	type: String,
	required: true
	}

});

//export the model
const User = module.exports = mongoose.model('User', UserSchema);

//methods
module.exports.getUserById = function(id, callback){
	User.findById(id, callback);
}

module.exports.getUserByUserName = function(username, callback){
	const query = {username: username}
	User.findOne(query, callback);
}
//function to add user
module.exports.addUser = function(newUser, callback){
	//generate salt for password hash
	bcrypt.genSalt(10, (err,salt) => {
		bcrypt.hash(newUser.password, salt, (err, hash) => {
			if(err) throw err;
			newUser.password = hash;
			newUser.save(callback);
		});
	});	 
});

```

#### Register
- go to routes> users.js
- require the user model
- require passport
- require jasonwebtoken

```javascript
const express = require('express');
const router = express.Router();
const passport = require('passport');
const jwt = require('jasonwebtoken');

const User = require('../models/user');

//Register route
router.post('/register', (req, res, next) => {
	let newUser = new User({
		name: req.body.name,
		email: req.body.email,
		username: req.body.username,
		password: req.body.password
		});
});

//add user
User.addUser(newUser, (err, user) => {
	if(err){
		//send json content
		res.json({success: false, msg:'Failed to register user'});
	} else {
		res.jspm({succces: true, msg:'User registered'});
	}
});
});

//Authenticate
router.post('/authenticate', (req, res, next) => {
	res.send('AUTHENTICATE')
});

//Profile
router.get('/profile', (req, res, next) => {
	res.send('PROFILE')
});


//export router
module.exports = router;

```

- use POSTMAN to test the new register functionality
- started tuning out around here. time to do something different

<hr>
## Part 4: API Authentication and Token
