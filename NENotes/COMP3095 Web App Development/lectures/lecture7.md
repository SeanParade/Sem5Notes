# Web Application Development for Java
## Back from Strike notes
- assignment 1 due date : next Monday
- next Tuesday midterm exam nov 28
- midterm exam: September - October (before the strike)
- lab test week of dec 11-15
- assignment 2 due dec 22
- final exam jan 16
- lab this week will be used as a lecture

### Lecture 9
#### JSP Introduction and Overview
##### Servlets
- read form data
- read http request headers
- send http status codes and response headers
- use cookies and session tracking

##### JSP
- outputting html
  - avoid embedded html in java
- entire JSP gets translated into servlet once and servlet is invoked once per request
- get translated into .class files

##### Benefits
- Read and Write HTML
- Specializaton (layout vs programming divided between teammates)
- Organized Code (separate Java code that creates content from presentation layer)

- JSPs are Servlets
- aka java files
- translate jsp > java > .class > servlet

##### JSP Misunderstandings
- Server-side NOT client-side
- if you can't do it in html you can't in jsp
- using javascript in jsps: set appropriate html pages to write javascript in

#### Translation/Request Time
- JSP gets translated into servlet code
At Request Time
- servlet code gets executed, no interpretation of JSP occurs at request time
- original jsp is ignored at request time, the resulting servlet is used



### Lecture 10
### Lecture 11