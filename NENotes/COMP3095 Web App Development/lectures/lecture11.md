# Web Application Development
## Lab/ Lecture 11 & a little bit of Lecture 12
### General Notes:
- Midterm NEXT Tuesday
- Assignment due Monday
- Assignment 2 will NOT have an extension (need appropriate time for marking)
- Assignment 2 will be posted in 1 week
- Jan 18th Final Exam (last lecture)
- one q: should we have a lab the week before exam?
  - after 2nd lab test, should we possibly not have labs?
  
<hr>

### Overview of last time:
> Q: What is the main reason we use JSPs?
> A: Manage the presentation layer, take HTML code blocks out of Java

- **Misconception** : Your job is to solve business problems, not just to code
- building confidence in your ability to learn technology is the easy part, it becomes repetitive
- what doesn't change is the problem solving aspect
- **MVC** Model View Controller
- JSPs uniquely "house" the presentation layer of the application

> Q: What are JSPs?
> A: Servlets

<hr>

## JSP Page Directive
- understanding the purpose of page directive
- classes imported
- MIME type of page
- gen. Excel spreadsheets
- participate in sessions
- setting size and behaviour of output buffer
- designating pages to handle JSP errors

### Purpose
- give high-level information about the servlet that will result from the JSP page
  - imported classes
  - extended classes
  - MIME type
  - how multithreading is handled
  - if sessions
  - size & behavior of buffer output
  - where errors
  
### Import Attribute
#### Format

```jsp

<%@ page import="package.class"%>
<%@ page import="package.class1"%>

```
- imports statements at the top of a servlet definition
- classes used by JSP pages must be in WEB_INF->classes directory
- **always use packages for utilities used by JSPs**

> Q: What packages will the system think that SomeHelperClass and SomeUtilityClass are in?
> A : They don't know unless you import the classes in the JSP using import statements

#### Review: Three Elements of JSPs
- declarations
  - declaring a variable etc. to be used later
- expressions
  - produce output (e.g. returning variable to screen)
- scriptlets:
  - <% code fragment %>
  - any number of statements, declarations, expressions valid in Java

#### contentType and pageEncoding
- not very important (pageEncoding)

##### Three Examples
```jsp

<%@page contentType="MIME-Type"%>

```
- Two other examples in powerpoint

#### Generating Excel Spreadsheet
- tabs between columns
- Excel.jsp file that marks contentType as application/vnd.ms-excel
  - contained under WEB-INF folder
  
> Q: When are JSPs converted to servlets?
> A: When the first request is received

- example code of conditionally generated Spreadsheet
  - why is it a scriptlet?
	- want to get a parameter, test the value, and set the content type
	
#### session, isELIgnored, buffer, errorPage, isErrorPage
- stuff that we won't use very much but are going over anyway
- might be one q on midterm or final

##### Sessions
- set to true or false
```jsp
<%@ page session="true"%> <%---Default %>

```
- session is set to true on default

##### isELIgnored
- JSP 2.0 Expression Lanuage

```jsp
<%@ page isELIgnored="false"%>
```
- you are never going to set this in here
- servlets 2.3 or earlier default == true
- servlets 2.4 or later default == false
  - ours is 3.1 == default is FALSE
- expression language makes your JSPs cleaner
- makes it less like Java and more like HTML

##### buffer Attribute
- not used very often
- give a buffer size for your output
  
##### errorPage Attribute
- some significance, usable
- specifies an error page that should be used if any exceptions are thrown but not caught by the current page
- JSP inside your JSP
