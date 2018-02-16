---
date: "2017-01-10T19:08:39+10:00"
toc: true
next: "/endpoints/game-engine"
prev: "/endpoints/franchise"
weight: 7
title: "Game"

---

***URL path:*** /games/

***Description:*** Video Games!

***Example response***

```json
{
    "id": 1234,
    "name": "Test game",
    "slug": "/games/test-game",
    "url": "https://www.igdb.com/games/test-game",
    "created_at": 123456789,
    "updated_at": 123456789
}
```

***Fields***

| Name                | Type                              | Mandatory | Comment |
| ------------------- |:---------------------------------:|:---------:| ------- |
| id                  | unsigned 64-bit integer           |     +     ||
| name                | string                            |     +     ||
| slug                | string                            |     +     ||
| url                 | string                            |     +     ||
| created_at          | 64-bit integer                    |     +     | Unix epoch |
| updated_at          | 64-bit integer                    |     +     | Unix epoch |
| summary             | text (long string)                |     -     ||
| storyline           | text (long string)                |     -     ||
| collection          | unsigned 64-bit integer           |     -     | ID of a [Collection](../collection) record |
| franchise           | unsigned 64-bit integer           |     -     | ID of a [Franchise](../franchise) record |
| hypes               | integer                           |     -     | Number of follows a game gets before release |
| popularity          | double                            |     -     | A number based on traffic to that game page |
| rating              | double                            |     -     | Average user rating |
| rating_count        | integer                           |     -     | Number of user ratings |
| aggregated_rating   | double                            |     -     | Rating based on external critic scores |
| aggregated_rating_count | integer                       |     -     | Number of external critic scores |
| total_rating        | double                            |     -     | Average rating based on both IGDB user and external critic scores |
| total_rating_count  | integer                           |     -     | Total number of user and external critic scores |
| game                | unsigned 64-bit integer           |     -     | ID of a [Game](../game) this game is a DLC/expansion of (expandable) |
| version_parent      | unsigned 64-bit integer           |     -     | ID of a [Game](../game) this game is an edition of |
| developers          | array of unsigned 64-bit integers |     -     | IDs of [Company](../company) records (expandable) |
| publishers          | array of unsigned 64-bit integers |     -     | IDs of [Company](../company) records (expandable) |
| game_engines        | array of unsigned 64-bit integers |     -     | IDs of [Game engine](../game-engine) records |
| category            | integer                           |     -     | See the [Game category](../../enum-fields/game-category) value reference |
| time_to_beat        | object                            |     -     | See the [Time to beat](../../misc-objects/time-to-beat) object reference |
| player_perspectives | array of unsigned 64-bit integers |     -     | IDs of [Player perspective](../player-perspective) records |
| game_modes          | array of unsigned 64-bit integers |     -     | IDs of [Game mode](../game-mode) records |
| keywords            | array of unsigned 64-bit integers |     -     | IDs of [Keyword](../keyword) records |
| themes              | array of unsigned 64-bit integers |     -     | IDs of [Theme](../theme) records |
| genres              | array of unsigned 64-bit integers |     -     | IDs of [Genre](../genre) records |
| platforms           | array of unsigned 64-bit integers |     -     | IDs of [Platform](../platform) records |
| first_release_date  | 64-bit integer                    |     -     | Unix epoch |
| status              | integer                           |     -     | See the [Game status](../../enum-fields/game-status) value reference |
| release_dates       | array of objects                  |     -     | See the [Release date](../../misc-objects/release-date) object reference |
| alternative_names   | array of objects                  |     -     | See the [Alternative name](../../misc-objects/alternative-name) object reference |
| screenshots         | array of objects                  |     -     | See the [Image](../../misc-objects/image) object reference |
| videos              | array of objects                  |     -     | See the [Video](../../misc-objects/video) object reference |
| cover               | object                            |     -     | See the [Image](../../misc-objects/image) object reference |
| esrb                | object                            |     -     | See the [ESRB](../../misc-objects/esrb) object reference |
| pegi                | object                            |     -     | See the [PEGI](../../misc-objects/pegi) object reference |
| websites            | array of objects                  |     -     | See the [Website](../../misc-objects/website) object reference |
| tags                | array of unsigned 32-bit integers |     -     | An array of [Tag Numbers](../../references/tag-numbers)  |
| dlcs                | array of unsigned 64-bit integers |     -     | IDs of [Game](../game) records (expandable) |
| expansions          | array of unsigned 64-bit integers |     -     | IDs of [Game](../game) records (expandable) |
| standalone_expansions | array of unsigned 64-bit integers |     -     | IDs of [Game](../game) records (expandable) |
| bundles             | array of unsigned 64-bit integers |     -     | IDs of [Game](../game) records (expandable) |
| games               | array of unsigned 64-bit integers |     -     | IDs of [Game](../game) records that are similar to this game. (expandable) |
| external            | object                            |     -     | See the [External](../../misc-objects/external) object reference |
