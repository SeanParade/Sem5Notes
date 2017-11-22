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


