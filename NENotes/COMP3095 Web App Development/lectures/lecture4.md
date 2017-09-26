# Web Application Development
## Week 4 - Lecture 4
### Announcement:
- Week 5 is next week
- ***LAB TEST 1***
- must go to lab
- assignment due on Friday of Midterm Exam (Week 7)

### Lab Test:
- will cover everything including this week
- Servlets
- forms
- GET and POST
- know how to map using the two methods

### Today's Lecture: Handling the Client Request
- reading Request headers
- building a table of request headers
  - id what's incoming
- understanding request headers
- compressing pages to reduce download times
  - compress "payload" : body of response
- example of differentiating among types of browsers
- practical use during lecture

### Typical Request Header
    - example in powerpoint
    - GET request
    - URLi , query string, (keywords)
- Everything in red:
  - implicit data being passed in
- need to know how to access header data

#### Retrieving Header information
- getHeader() method
  - returns value of request header element as a string
  - not case sensitive
- getHeaders() method
  - like getParameters
  - returns all values as an enumeration
    - loop through to obtain values
- getHeaderNames()
  - returns enumeration of all header names
  - "map"
- examples in Powerpoints of helper methods 
  - use these ^ methods
  - extract and return value as String
  - check if null first (all these methods will return null if the header does not exist)


#### Specialized Methods
- getCookies()
  - in chapter on cookies
  - returns array of all cookie objects
- getAuthType()
- getRemoteUser()
- getContentLength()
  - very popular method
  - use to check for null
- getContentType()

#### Validation
- always validate header information
- check for null before using

### MVC
- controller is the servlet

#### SideNote:
- for your labs next week, you don't need to use CSS for labs
- separate helper method to determine if null values

#### HTTP Headers
- look them up online and spend some time reading about them

#### Sending Compressed WebPages
     1. check if Gzip is supported
     - use "Content-Encoding" gzip type
     - in example, creating a huge response
       - to be compressed
- 10% faster response

#### UserAgent
- ID Diff browser types:
  - userAgentContains("[keyword]");
    - "MSIE" = Internet Explorer
    - "rv" = Internet Explorer 11
- be cautious: Headers can be faked
 
### Lecture 5 - Generating Server Responses: HTTP Status Codes
- Format of HTTP Response
- Setting response Status Code **
- What the status codes are good for
- redirect users to browser- specific pages
- front-end 

#### Request & Response
- Request Example (powerpoints p.5) :
  - GET  
  - query string
  - there is a control line feed (blank space)
    - end of incoming request packet

#### Response
- no GET or POST being passed through
- protocol thats supported : HTTP/1.1
- Status Code = 200 OK (200 == success)
- contains Content-Type
  - which we explicitly set in our doGet or doPost
    - mandatory to set this

#### Status Codes
- response.setStatusCodes(int statusCode)
  - there are already status codes you can use
  - constants are in HttpServletResponse
  - Names:
    - SC_OK
    - SC_NOT_FOUND
- response.setError(int code, String message)
- response.setRedirect(String url)
  - sets status code to 302

#### Common Codes
- know the series
- 100- 199 : Informational
- 200-299 : Success
- 300-399 : Redirection
- 400-499 : Client Error
- 500-599 : Server error

#### Redirection
- e.g. yahoo.ca -> redirects to: ca.yahoo.com
- redirect happens behind the scenes:
  - status code 302 is sent to browser
  - location sent to client
- analysis example image in powerpoint (p.32?)

-sendRedirect()
	- with or withoiut / eg
	- sendRedirect(foo/stuff.html)
	- sendRedirect(/foo/stuff.html)

##### Without:
      - http://wickedlysmart.com/myApp/cool/foo/stuff.html
      - appends to current path

##### With:
      - http://wickedlysmart.com/foo/stuff.html
      - appends to root of the domain

