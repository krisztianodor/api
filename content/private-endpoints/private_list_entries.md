---
title: "List Entries"
---

***URL path:*** /private/list_entries/

***Scope Name*** list_entry

***Description:*** IGDB list entries

{{% notice info %}}
This information is only accessible after a user has [authenticated](../authentication) and you have an access token. Any reads or writes performed will be specifically to that user.
{{% /notice %}}

***Example response***
```json
{
  "id": 157609,
  "user": 1337,
  "list": 7331,
  "game": 1942,
  "position": 0
}
```

***Fields***

| Name         | Type                    | Mandatory | Comment |
| ------------ |:-----------------------:|:---------:| ------- |
| id           | unsigned 64-bit integer |     +     ||
| user         | unsigned 64-bit integer |     +     | User ID |
| list         | unsigned 64-bit integer |     +     | List ID |
| game         | unsigned 64-bit integer |     +     | ID of Game that the entry is reffering to |
| position     | 64-bit integer          |     +     | position of the entry in the list, 0: default |

***Usage***   
With the list entries endpoint you can add, and delete list entries for a specific users list defined in the accesstoken. 

***Important headers***   
Authorization: Bearer "YOUR_ACCESSTOKEN"  
Content-Type: application/json

* Create list entry (POST)

	To create a new list entry you have to send a post request with the new entry in the form of a JSON, JSON structure bellow.  
	request URL: /private/list_entries/   
	The API will respond with the newly created list entry, see Example Response.  

* Delete user rating (DELETE)

	To delete an existing list entry you have to send a delete request with the list entry id.  
	request URL: /private/rates/157609  
	The API will respond with just the list entry id   

***Example JSON Body***
```json
{
	"list_entry":{
        "game": 1942,
        "list": 9823
    }
}
```
