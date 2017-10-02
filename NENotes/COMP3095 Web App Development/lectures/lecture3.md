# Web Application Development With Java
## Lecture 3

### Handling Requests

#### Servlet Life Cycle
	- finalize() for garbage collection
	- service() method
		- do NOT override this method
		- rely on the built-in logic
		- chances of error increase from overriding (not handling http requests correctly)

#### Debugging
	- we will go over this in labs
	- setting break points
	- R-click Tomcat and select Debug mode instead of "start"
	- can use print statements and run server on desktop
	- can use Apache Log4j	
		- separate tech that you can incorporate
		- used heavily in the industry
		- allows you to log to a log file in the console
	- make sure your debugging skills are involved
	
### Lecture Agenda
	1. HTTP protocol
	-  HTTP POST and GET 
	- adv and dis of POST and GET 
	- HTTP methods
	- HTML Form Basics
	- GET Header/ POST Headers

#### HTTP Protocol
	- Request and Response
		- b/w Client and Server
	- runs on top of TCP/IP

##### Key Eleemnts of Request Stream
	1. HTTP Method (action to be performed)
	- URL (page to access)
	- Form parameters (e.g. Arguments to Method)

##### Key Elements of Response Stream
	1. Status code (success)
		- e.g. 505
	2. Content-type (text, pictureHTML, etc.)
	3. Content (actual HTML, image, etc.)

##### HTTP Response
	- can contain HTML
	- adds header information on top of the content in the response
		- implicit data
	- browser uses header information to help process the page
	- HTML content = data pasted inside an HTTP response

#### HTTP Methods
##### HTTP GET/POST method	
	- HTTP method name
		- type of request, how formatted
	- HTTP methods NOT Java methods
	- most commonly used HTTP methods
	- recognize other methods for midterm * and final

##### GET Request Key Points
	- simplest HTTP method
		- for efficiency reasons, primarily used
	- ask the server to GET a resource and send back to the client
		- resource examples:
			- JPEG
			- PDF
			- HTML page

##### POST request Key Points
	- more powerful HTTP request method
	- *forms* will more likely use POST
	- like GET + added responsibilities
	- allow the caller to request something (resource) and at the same time send form data to the server

##### Can GET requests send data?
	- yes, you can use both GET and POST
	- the difference is:
		- security

#### GET
	- info is sent through the URL
		- concatenated parameters (e.g. ?ubb=get_topic&Mf=1123&t=4465)
	- problem with this is obviously security
	
##### Advantages
	- URLs can be bookmarked safely
	- Pages can be reloaded safely
	- Browsers can cache results
	- Easier to test interactively

##### Disadvantages
	- Security risk
	- limited number of variables that can be passed
		- e.g. 2048 characters

#### POST

##### Adv
	- check powerpoint slides for ADV and DISADVs

#### When to use what
##### GET
	- submitting search requests
	- when you want user to be able to pull the page up again
#### POST
	- higher security requests
		- e.g. altering a database
	- when you don't want user to bookmark page
		- usually for security reasons

### Remaining HTTP Methods
	1. GET*
	- POST*
	- HEAD
	- TRACE
	- PUT
	- DELETE
	- OPTIONS
	- CONNECT
	- should be able to *recognize* these methods, but don't need to know them in detail
		- except * methods
	- expect to see an MC question on this for the midterm and final

### Form Basics
	- example amazon form
	- always asking for multiple data
	- submit button
	- form action is saying what servlet we want to invoke
	- GET is default method 

### Installing HTML Files
	- HTML files go in WebContent rather than src
	- see Powerpoint for example picture
	- .java files go in src not in TomCat e.g. WebContent dir

<hr>
<p> missed a bunch of stuff because was figuring git out </p>

#### Reading Form Data in Servlets
	- request.getParameter("name")
		- returns URl decoded value of first occurrence of name in query string
		- works identically for GET and POST
		- returns null if not exists
			- must handle null values
	- request.getParameterValues("name")
		- array of URl decoded values of all occurrences of name
		- returns one element if param not repeated
		- returns null if not in query
	- request.getParameterNames

##### Using Three Parameters
	- parameter names
		- need to know the name in order to extract the value
	- sample code and forms in the powerpoint

#### Example
	- why are we using doGet method when we're using POST?

#### Missing/Malgormed Data Validation
	- create isValid method in helper class to check for null, then check for
		empty string
	- you're going to do validation on the client side
		- e.g. testing for null or empty values
	- there are some instances where validation occurs on the back end
		- larger task
		- typically always have one method calling the other
		- doPost is calling doGet
		- might be asked to do server validation in lab test 1
	- Malformed: non-empty string in the wrong format
		- e.g. valid email, postal code, etc.
		- REGEX
		- users should never see error messages (like stacktrace etc)

##### Guidelines
	- use default values
	- redisplay the form with flags for missing information
	- preserve previously entered values
	- options:
		1. same servlet present form, process information, present results
		- one servlet present the form, second process data and present result
		- jsp page manually present the form, have servlet or jsp page process data and present restuls
		- have jsp present form, auto fill in fields ...
