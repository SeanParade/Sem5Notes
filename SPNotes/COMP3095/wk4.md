# COMP3095
#### Week 4
Tue Sep 26 16:03:52 DST 2017

___

### Headers
- Headers can be faked
- in HTTP 1.1, headers are optional
- implicit data and explicit data is seperated by a CRLF (Control Line Feed)

#### Methods in HttpServletRequest
- General
  - getHeader()
    - returns the calue of the specified header if it exists
  - getHeaders()
    - returns all the values of the specified request header as an Enumeration of String Objects
  - getHeaderNames()
    - returns an enumeration of all the header name values as an enumeration
  - getCookies()
  - getAuthType()
  - getRemoteUser()
  - getContentLength()
    - returns length in bytes of the reqest body, or -1 if the length is not known
  - getContentType()
  - getDataType()
  - getMethod()
   - get the request method type
  - getRequestURI()
  - getQueryString()
  - getProtocol()
   
  
```Java
//Header access example

private String getUserAgent(){
  return request.getHeader("user-agent");
}

```
> When extracting any values from a header, you should always check if the header is `null`

___

### Status Codes
- methods
  - response.setStatusCode(int StatusCode)
    - Constant are in HttpServletResponse
    - Names are derived from standard message
  	  - SC_OK
	  - SC_NOT_FOUND
  - response.sendError(int code, String message)
    - wraps message inside a small HTML document
  - response.sendRequest(String url)
    - Set status code to *302*
	- redirects to a new location


- 100-199
  - Informational
  - Request was received and is being processed
- 200-299 
  - Success
  - Request was successful
- 300-399
  - Redirection
  - Further action must be taken to fulfill the request
- 400-499 
  - Client errors
- 500-559
  - Server Errors
