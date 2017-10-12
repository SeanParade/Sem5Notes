# Web App Development with Java
## Week 5 - Lecture 7
### Cookies
- benefits/ drawbacks
- outgoing
- incoming
- tracking
- session/ persistent
- utility classes
- mod values
- user preferences

#### What
- name-value pair
- persistent
- stored on client side
- store cookies associated with domain

> "Small amount of information sent by the server to the browser,
back to the browser on future page requests"

#### Uses
- Authentication
- Tracking
- Preferences ... shopping carts etc.

#### Composition
- name-value
- sent in header of client GET or POST request

#### Example image
- use of cookies by Amazon
  - Shows Items you viewed last time you visited

### Problems with Cookies
1. Privacy
- there were no other listed points, I shouldn't have bothered making a list

#### Setting cookies
- call constructor
- parameters = name, value
- set maximum age
  - default value is ?  
  - maximum value is ?
- add to response

```java
//construct cookie
Cookie c = new Cookie("userid", "a1234");
//set max age = 1 week
c.setMaxAge(60*60*24*7);
//add cookie to response
response.addCookie(c);

```

#### Reading Cookies
- returns a cookie object array
- use loop
- always test for null


#### Setting/ Using Cookie Attributes
- go through these on your own time

- diff b/w setting session cookie and persistent cookie ** exam q

#### session vs persistent
- session cookies: do not set maxAge
  - default = -1
- persistent cookie set max age

<hr>
* 5 min break

<hr>

### Assignment
- assignment 1 will be posted after the lab test
- 2-6 people in assignments : group assignment
  - assignment 2 will be based on assignment 1

### Part 2 : Building Cookie Helper Utilities
- use helper classes rather than repeated code
- eg. finding cookies with specified names

#### Tracking User Access
- cookie accesscount which increments every time user accesses the site

### Questions at end
- none
