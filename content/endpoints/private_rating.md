+++
title = "User Ratings"
+++

***URL path:*** /private/rates/

***Description:*** IGDB user ratings

***Important:*** You can only access this information with a valid access token. And the ratings will only be the ratings of this particulat user that is connected to the accesstoken.

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
