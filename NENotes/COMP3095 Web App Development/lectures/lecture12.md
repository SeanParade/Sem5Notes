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
   - large dev team
   - complicated data processing, relatively **fixed** layout
