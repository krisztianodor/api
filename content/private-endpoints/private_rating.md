---
title: "Ratings"
---

***URL path:*** /private/rates/

***Scope Name*** rates

***Description:*** IGDB user ratings

{{% notice info %}}
This information is only accessible after a user has [authenticated](../authentication) and you have an access token. Any reads or writes performed will be specifically to that user.
{{% /notice %}}

***Example response***
```json
{
    "id": 156849,
    "user": 1337,
    "game": 1942,
    "rating": 9
}
```

***Fields***

| Name         | Type                    | Mandatory | Comment |
| ------------ |:-----------------------:|:---------:| ------- |
| id           | unsigned 64-bit integer |     +     ||
| user         | unsigned 64-bit integer |     +     | User ID |
| game         | unsigned 64-bit integer |     +     | ID of a Game that the user has rated |
| rating       | unsigned 64-bit integer |     +     | The rating value for the specific game, 0 - 10 |

***Usage***   
With the user rating endpoint you can add, update, and delete user ratings for a specific user defined in the accesstoken. 

***Important headers***   
Authorization: Bearer "YOUR_ACCESSTOKEN"  
Content-Type: application/json

* Create user rating (POST)

	To create a new rating you have to send a post request with the new rating in the form of a JSON, JSON structure bellow.  
	request URL: /private/rates/   
	The API will respond with the newly created rating, see Example Response.  

* Update user rating (PATCH)

	To update an existing user rating you have to send a patch request with the updated rating in the form of a JSON, JSON structure bellow. The request url should contain the rating id at the end.   
	request URL: /private/rates/156849   
	The API will respond with the newly created rating, see Example Response.  

* Delete user rating (DELETE)

	To delete an existing user rating you have to send a delete request with the rating id.  
	request URL: /private/rates/156849  
	The API will respond with just the rating id   

***Example JSON Body***
```json
{
    "rate":{
        "game": 1942,
        "rating": 10
    }
}
```
