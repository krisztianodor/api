---
title: "User Lists"
---

***URL path:*** /private/lists/

***Description:*** IGDB user lists

{{% notice info %}}
This information is only accessible after a user has authenticated and you have an access token. Any reads or writes performed will be specifically to that user.
{{% /notice %}}

***Example response***
```json
{
    "id": 7331,
    "name": "Want to Play",
    "slug": "want-to-play",
    "updated_at": 1515406241367,
    "created_at": 1484834920172,
    "user": 1337,
    "url": "https://www.igdb.com/users/1337/lists/want-to-play",
    "private": false,
    "numbering": false,
    "lists": [
        16717,
        9581,
        20268,
        20765,
        17883
    ]
    }
```

***Fields***

| Name         | Type                    | Mandatory | Comment |
| ------------ |:-----------------------:|:---------:| ------- |
| id           | unsigned 64-bit integer |     +     ||
| name         | string                  |     +     | visual list name |
| slug         | string                  |     +     ||
| updated_at   | 64-bit integer          |     +     | Unix epoch |
| created_at   | 64-bit integer          |     +     | Unix epoch |
| user         | unsigned 64-bit integer |     +     | User ID |
| url          | string                  |     +     ||
| private      | boolean                 |     +     | is the list publicly visible |
| numbering    | boolen                  |     +     | is the list numbered |
| lists        | array of unsigned 64-bit integers   |     -     | |

***Usage***   
With the user lists endpoint you can add, update, and delete user lists for a specific user defined in the accesstoken. 

***Important headers***   
Authorization: Bearer "YOUR_ACCESSTOKEN"  
Content-Type: application/json

* Create user list (POST)

	To create a new list you have to send a post request with the new list in the form of a JSON, JSON structure bellow.  
	request URL: /private/lists/   
	The API will respond with the newly created list, see Example Response.  

* Update user list (PATCH)

	To update an existing user list you have to send a patch request with the updated rating in the form of a JSON, JSON structure bellow. The request url should contain the rating id at the end.   
	request URL: /private/lists/7331   
	The API will respond with the newly updated list, see Example Response.  

* Delete user rating (DELETE)

	To delete an existing user list you have to send a delete request with the list id.  
	request URL: /private/rates/7331  
	The API will respond with just the rating id -- (Currently 400... But works)   

***Example JSON Body***
```json
{
	"list":{
        "name": "my new list",
        "private": false,
        "numbering": false, -- (Optional)
        "description": "New list" -- (Optional)
    }
}
```
