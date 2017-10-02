# COMP3095
#### Week 2
Tue Sep 12 16:10:03 DST 2017

___

### Servlet Introduction and Basics

#### Web Application Structure and Directories

- ApplicationName
  - .settings
  - build
  - src
    - coreservlets
	- testPackage
  - WebContent
    - META-INF
	- WEB-INF
	  - lib
	    - third-party-packages-go-here.jar
	  - web.xml
	- css
	  - main.css
	- example.html
	- example.jsp


- WebContent is the only thing moved over to tomcat


- root - contains the HTML and JSP files
- WEB-INF - contains the web.xml file and is not directly accessible from the web
- WEB-INF\classes - Contains the servlets and other Java classes for your application. Each subdirectory corresponds with the package for the Javaclass
- WEB-INF\lib - contains any JAR files for third-party libraries

#### Servlets Job
- Read explicit data sent by the client (form data)
- Read implicit data sent by the client (request headers)
- Generate the results
- Send the explicit data back to the client (HTML)
- Send the implicit data back to the client 

#### A simple servlet that generates plain text
``` Java

@WebServlet("/hello") //very important to annotate the servlet. this is for configuration purposes in tomcat.
// "/hello" argument is where the application will be exposed (e.g. http://localhost:port/ApplicationName/hello)
public class HelloWorld extends HttpServlet{
	@Override
	protected void doGet(HttpServlet Request request, HttpServletResponse response) throws ServletException, IOException{
		PrintWriter out = response.getWriter();
		out.println("Hello World");
	}
	
	protected void doPost(HttpServletRequest request, HttpServlet response) throws ServletException, IOException{
	doGet(request, response);
	}
	
// This simply writes "Hello World" to the webpage.
```
- Code concepts
  - @WebServlet("/address")
    - this is the URL relative to the application name
  - doGet() - code for an HTTP GET request
  - doPost() - code for an HTTP POST request
- //... MORE HERE

#### Using helper classes
- All java code goes to the same place
  - in eclipse, source code goes in src/packageName
- Always remember OO Principles
  - Encapsulation
  - Data Abstraction
  - Polymorphism
  - Inheritance
