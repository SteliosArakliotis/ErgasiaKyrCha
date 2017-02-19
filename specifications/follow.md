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
	
	
	
	
