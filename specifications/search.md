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
