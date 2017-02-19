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
