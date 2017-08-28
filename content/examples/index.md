+++
date = "2017-01-09T10:30:17+01:00"
toc = true
icon = "<b class='fa fa-smile-o'></b>"
next = "/misc-objects"
prev = "/enum-fields"
weight = 3
title = "Examples"

+++

#### An example request in Java
----------
```
HttpResponse<JsonNode> response = Unirest.get("https://api-2445582011268.apicast.io/characters/?fields=*&limit=10")
.header("user-key", "YOUR_KEY")
.header("Accept", "application/json")
.asJson();
```

#### Get all information from a specific game
----------

`/games/1942?fields=*`

1942, is the ID of the game.

#### Get all games from specific genres
----------

`/genres/12,9,11?fields=*`

Notice you can comma separate multiple IDs (12, 9 and 11). You can do this with games, companies and anything else.

#### Count total games that have a rating higher than 75
----------
`/games/count?filter[rating][gt]=75`

#### Order by popularity
----------
Popularity parameter for games. You can access it like this:
`/games/?fields=name,popularity&order=popularity:desc`

The popularity number is calculated using usage statistics of game pages at https://www.igdb.com

#### Coming soon games for Playstation 4
----------

   `/release_dates/?fields=*&filter[platform][eq]=48&order=date:asc&filter[date][gt]=1500619813000`

1500619813000: Is the timestamp in miliseconds of today (This you need to generate yourself)  
48 Is the platform id of Playstation 4.
