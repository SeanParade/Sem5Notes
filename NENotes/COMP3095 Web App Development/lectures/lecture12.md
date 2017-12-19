# Java Web App
## General notes:
- assignment part 2 is up
  - get them in on the 4th
  - no further extensions
  - building on assignment 1
  - dissect and partition the work
  - can use JavaScript 
  - can use Java libraries
- SQL scripts : test before handing in 
  - employee and user is the same entity
  - what distinguishes them is the role that the user carries
- only submit with George Brown e-mails
- still have lab this week
- only one lecture left before exam, topic will be **JSF**
- good job on assignments!!!
- expect marks back for Lab Test 2
  - solutions will also be posted
  
<hr>

## Lecture 15 : Simplifying Access to Java Code
### JSP 2 Expression Language
- why use EL expression language
- understanding basic syntax of EL
- relationship of EL to MVC
- referencing scoped variables
- bean proprties, array/list, map
- EL operators
- evaluating expressions conditionally

#### Motivation for using EL
1. Servlet Only:
   - output is binary (image)
   - no output (forward/redirect)
   - format/layout is **variable**
2. JSP Only:
   - output is character data (html)
   - format/layout is **fixed**
3. Combination (MVC Architecture):
   - single request -> multiple possible output results
   - large dev team (Business Logic -- Development)
   - complicated data processing, relatively **fixed** layout

#### Steps to Implement MVC
1. ID and define beans
- Use servlet to handle requests
- obtain bean instances
- store the bean in the **Request**, **Session**, **Servlet Context**

> review MVC Flow of Control document

### SideNote:
- Servlets should be **thin**
  - they are just **controllers**
  - servlet should not be accessing database code
	- security violation
	- should be abstraction between the servlet and the database access

#### Drawback of MVC
- presenting results in the JSP
##### Goal:
- concise/ readable syntax
- ability to access sub-properties
- ability to access collections

- JSP scripting elements <% %> VS Beans

### More SideNotes:
- you will come across a lot of people who hate coding
- you will also start to hate it
- not often you get to work on something innovative
- becomes monotonous

#### Using EL
- set Attribute request.setAttribute("customer", someCustomer);
- call parameter name ${customer.firstName}x
