# COMP3095
#### Week 4
Tue Sep 26 16:03:52 DST 2017

___

### Headers
#### Methods in HttpServletRequest
- General
  - getHeader()
    - returns the calue of the specified header if it exists
  - getHeaders()
    - returns all the values of the specified request header as an Enumeration of String Objects
  - getHeaderNames()
    - returns an enumeration of all the header name values as an enumeration
```Java
//Header access example

private String getUserAgent(){
  return request.getHeader("user-agent");
}
```
