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
	

	
	
