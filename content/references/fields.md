+++
weight = 1
title = "Fields"
date = "2017-01-09T10:23:15+01:00"
next = "/next/path"
prev = "/prev/path"

+++

## What?
Fields are properties of an entity. For example, a Game field would be `rating` or `release_dates`. Some fields have properties of their own, for example, the `esrb` field has the property `synopsis`.

## Where?
Fields can be used on any entity that has sub-properties such as Games, Companies, People etc.

## How?
Fields are requested in a comma separated list. For example, to get some information for some Games, Genres, Themes or anything else, you could request it like this:  
 
`/games/4356,189,444?fields=name,release_dates,esrb.synopsis,rating `

Note the `synopsis` property of `esrb` can be accessed directly with a dot.

### Age Rating

`esrb.rating` Is an integer constant with this conversion table:  

| Name| ID |
|---|---|
| RP | 1 |
| EC| 2 |
| E | 3 |
| E10+ | 4 |
| T | 5 |
| M | 6 |
| AO | 7 |

`pegi.rating` Is an integer constant with this conversion table:  

| Age | ID |
|---|---|
| 3 | 1 |
| 7 | 2 |
| 12 | 3 |
| 16 | 4 |
| 18 | 5 |

### Games category

The Games field `category` Is an integer constant with this conversion table:  

| Type | ID |
|---|---|
| Main Game | 0 |
| DLC / Addon | 1 |
| Expansion | 2 |
| Bundle | 3 |
| Standalone Expansion | 4 |

### Date Category

The Company and Games field `change_date_category`, `start_date_category` and `release_date_category` are integers constant with this conversion table:  

| Type | ID |
|---|---|
| YYYY-MM-DD | 0 |
| YYYY-MM | 1 |
| YYYY | [2,7] |
| YYYY-Qn | [3,4,5,6] |

### Game Status

The Games field `status` are integers constant with this conversion table:  

| Status | ID |
|---|---|
| ALPHA |  2 |
| BETA |  3 |
| Early-access |  4 |
| Offline |  5 |
| Cancelled |  6 |

### Region

The Games field `release_date_region` are integers constant with this conversion table:  

| Region | ID |
|---|---|
|Worldwide [WW] | 8 |
|Europe [EU] | 1 |
|North America [NA] | 2 |
|Australia [AU] | 3 |
|New Zealand [NZ]' | 4 |
|Japan [JP]' | 5 |
|China [CH]' | 6 |
|Asia [AS]' | 7 |

### Pulse

The Pulse field `category` are integers constant with this conversion table:  

| Category | ID |
|---|---|
|reddit| 1|
| kickstarter| 2|
| kotaku| 3|
| polygon| 4|
| killscreen| 5|
| gameinformer| 6|
| rock_paper_shotgun| 7|
| wired_game_life| 8|
| n4g| 9|
| escapist| 10|
| pcgamer| 11|
| ign| 12|
| indie_games| 13|
| destructoid| 14|
| nichegamer| 15|


* Countries is following the http://en.wikipedia.org/wiki/ISO_3166-1_numeric standard.
* The timestamps/dates is always measured in milliseconds since unix epoch.
* The platforms are now attached to the release dates.

A full list of fields can be obtained by passing a `*` as a field. Alternatively you can use the `meta` postfix: `/games/meta` to get a list of all fields.

