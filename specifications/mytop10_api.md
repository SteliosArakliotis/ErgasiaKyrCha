**Create new User (FR-3),(FR-5),(FR-6),(FR-18)**
----
  Creates a new single user.

* **URL**

  /user

* **Method:**

  `POST`
  
*  **URL Params**

   **Required:**
 
   None

* **Data Params**

  {
  user : {
    email : [string],
    username : [string],
    password : [alphanumeric],
    user_id : [integer],
	date_of_birth: [date],
	sex: [string],
	location: [string],
	photo: [data],
	status:[string],
	trophy:[string]
	
    
  }
}

* **Success Response:**

  * **Code:** 201 <br />
    **Content:** `{ "Successfull new account" }`
 
* **Error Response:**

  * **Code:** 404 NOT FOUND <br />
    **Content:** `{ error : "Unsuccessfull creation of new account.Try again" }`
	
	 OR

  * **Code:** 401 UNAUTHORIZED <br />
    **Content:** `{ error : "You are unauthorized to make this request." }`
	
	
	
	
	
	

 **Show User**
----
  Returns data about a single user.

* **URL**

  /user/:user_id

* **Method:**

  `GET`
  
*  **URL Params**

   **Required:**
 
   `user_id=[integer]`

* **Data Params**

  None

* **Success Response:**

  * **Code:** 200 <br />
    **Content:** `{ user_id : 12, username : "Michalis Pap" }`
 
* **Error Response:**

  * **Code:** 404 NOT FOUND <br />
    **Content:** `{ error : "User doesn't exist" }`
	
	 OR

  * **Code:** 401 UNAUTHORIZED <br />
    **Content:** `{ error : "You are unauthorized to make this request." }`
	
	
	
	
	
	
	
	
	
**Delete user(FR-16),(FR-25)**
----
  Delete a single user.

* **URL**

  /user/:user_id

* **Method:**

  `DELETE`
  
*  **URL Params**

   **Required:**
 
   `user_id=[integer]`

* **Data Params**

  None

* **Success Response:**

  * **Code:** 200 <br />
    **Content:** `{ "User deleted successfully" }`
 
* **Error Response:**

  * **Code:** 404 NOT FOUND <br />
    **Content:** `{ error : "User doesn't exist" }`
	
	 OR

  * **Code:** 401 UNAUTHORIZED <br />
    **Content:** `{ error : "You are unauthorized to make this request." }`

  
  
  
  
  
  
  **Change your personal info (FR-7)**
----
  Update your user profile.

* **URL**

  /user/:user_id

* **Method:**

  `PUT`
  
*  **URL Params**

   **Required:**
 
   `user_id=[integer]`

* **Data Params**

  username : [string],
  password : [alphanumeric],
  date_of_birth: [integer],
  sex: [string],
  location: [string],
  photo: [data]

* **Success Response:**

  * **Code:** 200 <br />
    **Content:** `{"Successfully updated" }`
 
* **Error Response:**

  * **Code:** 404 NOT FOUND <br />
    **Content:** `{ error : "User doesn't exist" }`

  OR

  * **Code:** 401 UNAUTHORIZED <br />
    **Content:** `{ error : "You are unauthorized to make this request." }`
	
	
	
	
	
	
	
	**Show User status(FR-17)**
----
  Returns status  about a single user.

* **URL**

  /user/:user_id?status=online

* **Method:**

  `GET`
  
*  **URL Params**

   **Required:**
 
   `user_id=[integer]`

* **Data Params**

  None

* **Success Response:**

  * **Code:** 200 <br />
    **Content:** `{ username : "Michalis Pap ","is online" }`
 
* **Error Response:**

  * **Code:** 404 NOT FOUND <br />
    **Content:** `{ error : "User not found" }`
	
	
	
	
	
	
	
	
	**Award with trophy (FR-28)**
----
  Give trophy to particular user.

* **URL**

  /user/:user_id

* **Method:**

  `PUT`
  
*  **URL Params**

   **Required:**
 
   `user_id=[integer]`

* **Data Params**

  trophy=[string]

* **Success Response:**

  * **Code:** 200 <br />
    **Content:** `{"Successfully awarded" }`
 
* **Error Response:**

  * **Code:** 404 NOT FOUND <br />
    **Content:** `{ error : "User doesn't exist" }`

  OR

  * **Code:** 401 UNAUTHORIZED <br />
    **Content:** `{ error : "You are unauthorized to make this request." }`
	
**Create new Admin **
----
  Creates a new single administrator.

* **URL**

  /admin

* **Method:**

  `POST`
  
*  **URL Params**

   **Required:**
 
   None

* **Data Params**

  {
  admin : {
    admin_name : [string],
    admin_id : [integer],
	
	
    
  }
}

* **Success Response:**

  * **Code:** 201 <br />
    **Content:** `{ "Successfull new admin account" }`
 
* **Error Response:**

  * **Code:** 404 NOT FOUND <br />
    **Content:** `{ error : "Unsuccessfull creation of new account.Try again" }`
	
	 OR

  * **Code:** 401 UNAUTHORIZED <br />
    **Content:** `{ error : "You are unauthorized to make this request." }`
	
	
	
	
	
	
	**Show Admin**
----
  Returns data about a single administrator.

* **URL**

  /admin/:admin_id

* **Method:**

  `GET`
  
*  **URL Params**

   **Required:**
 
   `admin_id=[integer]`

* **Data Params**

  None

* **Success Response:**

  * **Code:** 200 <br />
    **Content:** `{ admin_id : 123, username : "Kostas Sotiriou" }`
 
* **Error Response:**

  * **Code:** 404 NOT FOUND <br />
    **Content:** `{ error : "Admin doesn't exist" }`
	
	 OR

  * **Code:** 401 UNAUTHORIZED <br />
    **Content:** `{ error : "You are unauthorized to make this request." }`
    
    
    **Create new list (FR-1),(FR-10),(FR-21)**
----
  Create a new single list for a user.

* **URL**

  /user/:user_id/list

* **Method:**

  `POST`
  
*  **URL Params**

   **Required:**
 
   `user_id=[integer]`

* **Data Params**

{
  list_id=[integer]
  category=[string]
  listname=[string]
  discription=[string]
  date_of_release=[date]
  tag=[string]
  }

* **Success Response:**

  * **Code:** 201 <br />
    **Content:** `{ "List created" }`
 
* **Error Response:**

  * **Code:** 400 BAD REQUEST <br />
    **Content:** `{ error : "List not created" }`
	
	
	
	
	
	
	**Show list**
----
 Returns a single list of a particular user.

* **URL**

  /user/:user_id/list/:list_id

* **Method:**

  `GET`
  
*  **URL Params**

   **Required:**
 
   `user_id=[integer]`
   `list_id=[integer]`

* **Data Params**

  None

* **Success Response:**

  * **Code:** 200 <br />
    **Content:** `{ listname:"best comedies" }`
 
* **Error Response:**

  * **Code:** 404 NOT FOUND <br />
    **Content:** `{ error : "List doesn't exist" }`

  OR

  * **Code:** 401 UNAUTHORIZED <br />
    **Content:** `{ error : "You are unauthorized to make this request." }`
	
	
	
	
	
	
	
	
	**Delete list (FR-26)**
----
  Delete a single list of a particularuser.

* **URL**

  /users/:user_id/list/:list_id

* **Method:**

  `DELETE`
  
*  **URL Params**

   **Required:**
 
   `user_id=[integer]`
   `list_id=[integer]`

* **Data Params**

  None

* **Success Response:**

  * **Code:** 200 <br />
    **Content:** `{ "List deleted successfully" }`
 
* **Error Response:**

  * **Code:** 404 NOT FOUND <br />
    **Content:** `{ error : "List doesn't exist" }`

  OR

  * **Code:** 401 UNAUTHORIZED <br />
    **Content:** `{ error : "You are unauthorized to make this request." }`
	
	
	
	
	
	
	
	
	
		**Show all lists of a particular user(FR-2)**
----
 Returns all lists of a particular user.

* **URL**

  /users/:user_id/list/

* **Method:**

  `GET`
  
*  **URL Params**

   **Required:**
 
   `user_id=[integer]`

* **Data Params**

  None

* **Success Response:**

  * **Code:** 200 <br />
    **Content:** `{ "OK" }`
 
* **Error Response:**

  * **Code:** 404 NOT FOUND <br />
    **Content:** `{ error : "There are no lists" }`

  OR

  * **Code:** 401 UNAUTHORIZED <br />
    **Content:** `{ error : "You are unauthorized to make this request." }`
	
	
	
	
	
	
	
	**Rename list (FR-8)**
----
  Change a name of a single list.

* **URL**

  /users/:user_id/list/:list_id

* **Method:**

  `PUT`
  
*  **URL Params**

   **Required:**
 
   `user_id=[integer]`
   `list_id=[integer]`

* **Data Params**

  {
   listname:[string]
  }
* **Success Response:**

  * **Code:** 200 <br />
    **Content:** `{ "Listname changed successfully" }`
 
* **Error Response:**

  * **Code:** 404 NOT FOUND <br />
    **Content:** `{ error : "List doesn't exist" }`

  OR

  * **Code:** 401 UNAUTHORIZED <br />
    **Content:** `{ error : "You are unauthorized to make this request." }`
	
	
	
	
	**Rate a list (FR-5)**
----
  Rate a list of a particular user.

* **URL**

  /users/:user_id/list/:list_id/rate

* **Method:**

  `POST`
  
*  **URL Params**

   **Required:**
 
   `user_id=[integer]`
   `list_id=[integer]`

* **Data Params**

  {
  ratio=[integer]
  ratio_id=[integer]
  }

* **Success Response:**

  * **Code:** 200 <br />
    **Content:** `{ "List rated" }`
 
* **Error Response:**

  * **Code:** 404 NOT FOUND <br />
    **Content:** `{ error : "List doesn't exist" }`

  OR

  * **Code:** 401 UNAUTHORIZED <br />
    **Content:** `{ error : "You are unauthorized to make this request." }`
	
	
	
	
	
		**Show the rating of a single list from a particular user**
----
 Returns a single list of a particular user.

* **URL**

  /user/:user_id/list/:list_id/ratio/:ratio_id

* **Method:**

  `GET`
  
*  **URL Params**

   **Required:**
 
   `user_id=[integer]`
   `list_id=[integer]`
   `ratio_id=[integer]`
   

* **Data Params**

  None

* **Success Response:**

  * **Code:** 200 <br />
    **Content:** `{ "OK" }`
 
* **Error Response:**

  * **Code:** 404 NOT FOUND <br />
    **Content:** `{ error : "List doesn't exist" }`

  OR

  * **Code:** 401 UNAUTHORIZED <br />
    **Content:** `{ error : "You are unauthorized to make this request." }`
	
	
	
	
	
	
	
	
	
	
	
	
	
	
**Comment a list (FR-9)**
----
  Comment a list of a particular user.

* **URL**

  /users/:user_id/list/:list_id/comment

* **Method:**

  `POST`
  
*  **URL Params**

   **Required:**
 
   `user_id=[integer]`
   `list_id=[integer]`

* **Data Params**

  {
  comment_content=[string],
  comment_id=[integer]
 
  
  }

* **Success Response:**

  * **Code:** 200 <br />
    **Content:** `{ "List commented successfully" }`
 
* **Error Response:**

  * **Code:** 404 NOT FOUND <br />
    **Content:** `{ error : "List doesn't exist" }`

  OR

  * **Code:** 401 UNAUTHORIZED <br />
    **Content:** `{ error : "You are unauthorized to make this request." }`
    
    **Follow users (FR-4)**
----
  Create an entry to follow-list.

* **URL**

  /users/:user_id/follow_list

* **Method:**

  `POST`
  
*  **URL Params**

   **Required:**
 
   `user_id=[integer]`

* **Data Params**
{
  follow_id=[integer]
}
* **Success Response:**

  * **Code:** 200 <br />
    **Content:** `{ "OK" }`
 
* **Error Response:**

  * **Code:** 404 NOT FOUND <br />
    **Content:** `{ error : "User doesn't exist" }`

  OR

  * **Code:** 401 UNAUTHORIZED <br />
    **Content:** `{ error : "You are unauthorized to make this request." }`
	
	
	
	
**Search User by username(FR-11)**
----
  Returns data about a single user.

* **URL**

  /user?username=Nikos

* **Method:**

  `GET`
  
*  **URL Params**

   **Required:**
 
   `username=[string]`

* **Data Params**

  None

* **Success Response:**

  * **Code:** 200 <br />
    **Content:** `{ "User found" }`
 
* **Error Response:**

  * **Code:** 404 NOT FOUND <br />
    **Content:** `{ error : "User doesn't exist" }`
	
	 OR

  * **Code:** 401 UNAUTHORIZED <br />
    **Content:** `{ error : "You are unauthorized to make this request." }`
	
	
	
	
	
	
	
	
	
	
	**Search list by listname(FR-12)**
----
  Returns data about a single list.

* **URL**

  /list?listname=Bestcomedies

* **Method:**

  `GET`
  
*  **URL Params**

   **Required:**
 
   `listname=[string]`

* **Data Params**

  None

* **Success Response:**

  * **Code:** 200 <br />
    **Content:** `{ "List found" }`
 
* **Error Response:**

  * **Code:** 404 NOT FOUND <br />
    **Content:** `{ error : "List doesn't exist" }`
	
	 OR

  * **Code:** 401 UNAUTHORIZED <br />
    **Content:** `{ error : "You are unauthorized to make this request." }`
	
	
	
	
	
	
	
		**Search list by date(FR-14)**
----
  Returns data about a single list.

* **URL**

  /list?date_of_release=19/2/2017

* **Method:**

  `GET`
  
*  **URL Params**

   **Required:**
 
   `date_of_release=[date]`

* **Data Params**

  None

* **Success Response:**

  * **Code:** 200 <br />
    **Content:** `{ "List found" }`
 
* **Error Response:**

  * **Code:** 404 NOT FOUND <br />
    **Content:** `{ error : "List doesn't exist" }`
	
	 OR

  * **Code:** 401 UNAUTHORIZED <br />
    **Content:** `{ error : "You are unauthorized to make this request." }`
	
	
	
	
	
		**See lists with best ratio(FR-15)**
----
  Returns the lists with the bigest ratio.

* **URL**

  /list?ratio&sort=desc

* **Method:**

  `GET`
  
*  **URL Params**

   **Required:**
 
   `ratio=[integer]`

* **Data Params**

  None

* **Success Response:**

  * **Code:** 200 <br />
    **Content:** `{ "OK" }`
 
* **Error Response:**

  * **Code:** 404 NOT FOUND <br />
    **Content:** `{ error : "There are no lists" }`
	
	 OR

  * **Code:** 401 UNAUTHORIZED <br />
    **Content:** `{ error : "You are unauthorized to make this request." }`
	
	
	
	
	

	
	
	
	

	
	
	
	
	
	



	
	
