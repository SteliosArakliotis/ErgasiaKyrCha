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
	
	
	
	
	
	
	
	
	
	
	
	
	
	
