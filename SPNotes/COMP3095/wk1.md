# COMP3095 - Web Application Java
#### Week 1
Tue Sep  5 16:10:46 DST 2017

___

### Intro
- Everything will be posted to blackboard
- Textbook http://pdf.coreservlets.com/
- Tools
 - Tomcat (version 8)
 - Java 8
 - Eclipse (EE)


____

### Overview of servlet and JSP technology
- Applied objectives
 - these objective ask you to apply what you have learned as you start developing web applications.
 - Represent the critical objectives of programming course
- Knowledge objectives
 - name software components that run on the client of a typical web application
 - name components that run on a server of a typical web app
 - distinguish between html and http
 - distinguish between dynamic and static
 - describe the use of webapps, document root, WEB-INF, WEB-INF\classes as described by JEE specifications
 - name two IDE's for java application developement
 - name two webservers for developing java web applications
 - name a popular database server
 - JSP vs JSF
 - What servlets and JSP are all about
 
### Components of a web app
- Client computer
- Web Browser
- internet connection
- server computer
- Web server
- Database server 

### Approaches for developing java web apps
- Servlet/JSP
 - lower API that do less work for the programmer
 - provides a high degree of control over the HTML/CSS/JS thats returns to the browser
- JSF (Java Server Faces)
 - Is a higher-level API that does more work for the programmer
 - Makes it more difficult to control the markup that is returned to the browser
- Framework (Spring / Struts)
 - Is an even high-level API that does more work for the programmer.
 - provides a high-degree of control over the HTML/CSS/JS that returned to the browser


### Servlets job
- read explicit data sent by client (from data)
- read implicit data (request headers)
 - IP
 - Location
 - Port
 - Time
- generate results 
- send explicit data backt o the client (html)
- Send implicit data (stat code and response header)

