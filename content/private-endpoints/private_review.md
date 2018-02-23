---
title: "Reviews"
---

***URL path:*** /private/reviews/

***Scope Name*** reviews

***Description:*** IGDB user reviews

{{% notice info %}}
This information is only accessible after a user has [authenticated](../authentication) and you have an access token. Any reads or writes performed will be specifically to that user.
{{% /notice %}}

***Example response***
```json
{
    "id": 2508,
    "slug": "review-monster-hunter-world",
    "url": "https://www.igdb.com/games/monster-hunter-world/reviews/review-monster-hunter-world",
    "updated_at": 1519396825587,
    "created_at": 1519396825579,
    "game": 36926,
    "username": "1337",
    "title": "Review: Monster Hunter: World",
    "avatar_url": "//images.igdb.com/igdb/image/upload/t_thumb/yvk53qfbt3vwjz2iwevw.png",
    "likes": 0,
    "views": 0,
    "rating_category": 2,
    "review_rating": 6,
    "content": "Here is the user review, a minimum of 50 characters."
}
```

***Fields***

| Name         | Type                    | Mandatory | Comment |
| ------------ |:-----------------------:|:---------:| ------- |
| id           | unsigned 64-bit integer |     +     ||
| slug         | String                  |     +     ||
| url          | String                  |     +     ||
| updated_at   | 64-bit integer          |     +     ||
| created_at   | 64-bit integer          |     +     ||
| game         | Unsigned 64-bit integer |     +     ||
| username     | String                  |     +     | reviews username |
| title        | String                  |     -     | review title|
| avatar_url   | String                  |     +     | user avatar http |
| likes        | integer                 |     +     | number of likes |
| views        | integer                 |     +     | number of views |
| category     | integer                 |     +     ||
| rating_category | integer              |     +     | 1: no rating, 2: only rating, 3: advanced rating|
| review_rating | integer                |     +     | user rating for the reviewed game |
| platform      | 64-bit integer         |     -     | connected platform |
| introduction  | String                 |     -     | review introduction |
| content       | String                 |     +     | review content (required)|
| conclusion    | String                 |     -     | review conclusion |
| positive_points | String               |     -     | review positive points |
| negative_points | String               |     -     | review negative points |


***Usage***   
With the user review endpoint you can add, update, and delete user reviews for a specific user defined in the accesstoken. 

***Important headers***   
Authorization: Bearer "YOUR_ACCESSTOKEN"  
Content-Type: application/json

* Create user review (POST)

	To create a new review you have to send a post request with the new review in the form of a JSON, JSON structure bellow.  
	request URL: /private/reviews/   
	The API will respond with the newly created review, see Example Response.  

* Update user review (PATCH)

	To update an existing user review you have to send a patch request with the updated review in the form of a JSON, JSON structure bellow. The request url should contain the rating id at the end.   
	request URL: /private/review/2508   
	The API will respond with the newly created rating, see Example Response.  

* Delete user rating (DELETE)

	To delete an existing user review you have to send a delete request with the review id.  
	request URL: /private/review/2508  
	The API will respond with just the deleted review.  

***Example JSON Body***
```json
{
	"review": { 
		"game_id": 36926,
		"title": "Review: Monster Hunter: World (optional)",
		"review_text_attributes": {
			"introduction": "Review introduction (optional)",
			"content": "Review content (required)",
			"conclusion": "Review conclusion (optional)",
			"positive_points": "Review positive points (optional)",
			"negative_points": "Review negative points (optional)"
		},
		"rating_category": 3,
		"review_rating_attributes": {
			"story_rate": 10, 
      "graphics_rate": 10, 
      "audio_rate": 10, 
      "controls_rate": 10, 
      "fun_rate": 10,
			"rating": 6
		}
	}
}
```
*** additional info***  
content is the standard review space and is required to be filled with at least 50 characters to be accepted.  
rating category = 2 means only posting/ patching "rating": 6  
rating category = 3 means only posting/ patching advanced ratings, not rating.  
