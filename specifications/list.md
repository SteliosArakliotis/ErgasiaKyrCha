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
	
	
	
	
	
	
	
	
	
	

	
	
	
	

	
	
	
	
	
	



	
	
	
	
