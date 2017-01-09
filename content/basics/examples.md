+++
date = "2017-01-09T10:30:17+01:00"
toc = true
next = "/references"
prev = "/basics/endpoints"
weight = 3
title = "Examples"

+++

## Get all information from a specific game

`https://igdbcom-internet-game-database-v1.p.mashape.com/games/1942?fields=*`

1942, is the ID of the game.

## Get all games from a specific genre

`https://igdbcom-internet-game-database-v1.p.mashape.com/genres/12?fields=*`


## Count total games that have a rating higher than 75

`https://igdbcom-internet-game-database-v1.p.mashape.com/games/count?filter[rating][gt]=75`

## Popularity

Popularity parameter for games. You can access it like this:
`https://igdbcom-internet-game-database-v1.p.mashape.com/games/?fields=name,popularity&order=popularity:desc`

The popularity number is calculated using usage statistics of game pages at https://www.igdb.com