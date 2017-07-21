+++
date = "2017-01-09T10:30:17+01:00"
toc = true
icon = "<b class='fa fa-smile-o'></b>"
next = "/misc-objects"
prev = "/enum-fields"
weight = 3
title = "Examples"

+++

## An example request in Java

```
HttpResponse<JsonNode> response = Unirest.get("https://igdbcom-internet-game-database-v1.p.mashape.com/characters/?fields=*&limit=10")
.header("X-Mashape-Key", "YOUR_KEY")
.header("Accept", "application/json")
.asJson();
```

## Get all information from a specific game

`https://igdbcom-internet-game-database-v1.p.mashape.com/games/1942?fields=*`

1942, is the ID of the game.

## Get all games from specific genres

`https://igdbcom-internet-game-database-v1.p.mashape.com/genres/12,9,11?fields=*`

Notice you can comma separate multiple IDs (12, 9 and 11). You can do this with games, companies and anything else.

## Count total games that have a rating higher than 75

`https://igdbcom-internet-game-database-v1.p.mashape.com/games/count?filter[rating][gt]=75`

## Popularity

Popularity parameter for games. You can access it like this:
`https://igdbcom-internet-game-database-v1.p.mashape.com/games/?fields=name,popularity&order=popularity:desc`

The popularity number is calculated using usage statistics of game pages at https://www.igdb.com
