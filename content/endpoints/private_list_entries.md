+++
title = "List Entries"
+++

***URL path:*** /private/list_entries/

***Description:*** IGDB list entries

***Important:*** You can only access this information with a valid access token. And the list entries will only be the entries of this particulat user that is connected to the accesstoken.

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
| position     | 64-bit integer          |     +     | position of the entry in the list, 0 = default |

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
