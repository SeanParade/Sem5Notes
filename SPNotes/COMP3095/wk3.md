# COMP3095
#### Week 3
Tue Sep 19 16:06:15 DST 2017

___

### Servlet Life Cycle
- init()
  - executed on load
  - not called for each request
- service()
  - Called in new thread by server for each incoming request
  - dispatches to doGet, doPost, etc
- doGet()
- do Post()


- *On test*
> Servlet (.class) -> Instantiation (new()) -> Initialization (init()) -> Ready State (service(...)) -> Destruction (destroy()) -> Garbage Collection (finalize())
____

## Lecture 5

### HTTP Protocol
- run on top of TCP/IP
-

#### Request
- HTTP Method (the Action to be performed
- URL (the page to access
- Form parameters

#### Response
- Status Code (for whether the request was successful
- Content type (text, picture html, etc)
- The content (the actual HTML, image, etc.)
- HTTP respones can contain html
- http adds header information on top of whatever content in the response
- browser will use the header ingormation to help process the html page
- think of html content as data pasted inside an http response

#### HTTP methods
- GET
  - user clicks link to new page
    - browser sends an http get to the server, asking the server to get the page
  - get is the simplest and fasted method
  - get has a main job, ask the server to get a resouce and send it back to the client
  - resource might be html, jpeg, pdf, etc.
  - point is to get a resource from the server
  - total amount of characters is limited (2048)
  - Can be bookmarked
  - pages can be reloaded safely
  - browsers can cahce results
  - easier to test interactively
  - limited number of variables that can be passed (due to char limit)
  - usually used for submitting serach request
  - usually used when you want the user to be able to bookmark
- POST
  - more powerful HTTP request method
  - user types in a form and hits the submit button
    - browser sends an http post to the server giving the server what the user typed into the form
    - server does whatever it needs to with the data
  - like GET with more capabilities
  - POST will allow the client to request something and at the same time send form data to the server
  - user cannot bookmark a form submission if you use post (i.e. the resulting request from a form submission)
  - name-value pairs not displayed in URL
  - Unlimited number of name value pairs
  - URL is simpler
  - Special chars can be sent
  - browsers will not cache result
  - page cannot be bookmarked
  - performance can be degraded in comparison to GET
  - usually used in higher security requests
  - used when you dont want a users bookmarking the results
- HEAD
- TRACE
- PUT
- DELETE
- OPTIONS
- CONNECT

### Form Basics
- `request.getParameter("name")` pulls a parameter from a request
  - works on GET and POST
  - returns `null` if no such parameter is in query data
    - its important to check for nulls
