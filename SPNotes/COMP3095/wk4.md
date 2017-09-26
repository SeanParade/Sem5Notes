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
  - getCookies()
  - getAuthType()
  - getRemoteUser()
  - getContentLength()
    - returns length in bytes of the reqest body, or -1 if the length is not known
  - getContentType()
  - getDataType
  - getMethod
   - get the request method type
  - getRequestURI()
  - getQueryString
  - getProtocol()
   
  
```Java
//Header access example

private String getUserAgent(){
  return request.getHeader("user-agent");
}

```
> When extracting any values from a header, you should always check if the header is `null`

