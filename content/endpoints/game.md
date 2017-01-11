+++
date = "2017-01-10T19:08:39+10:00"
toc = true
next = "/endpoints/genre"
prev = "/endpoints/company"
weight = 2
title = "Game"

+++

***URL path:*** /games/

***Example response***

```json
{
    "id": 1234,
    "name": "Test game",
    "slug": "/games/test-game",
    "url": "https://www.igdb.com/games/test-game",
    "created_at": 123456789,
    "updated_at": 123456789,
    ...
}
```

***Fields***

| Name                | Type                              | Mandatory | Comment |
| ------------------- |:---------------------------------:|:---------:| ------- |
| id                  | unsigned 64-bit integer           |     +     ||
| name                | string                            |     +     ||
| slug                | string                            |     +     ||
| url                 | string                            |     +     ||
| created_at          | unsigned 64-bit integer           |     +     | Unix epoch |
| updated_at          | unsigned 64-bit integer           |     +     | Unix epoch |
| summary             | text (long string)                |     -     ||
| storyline           | text (long string)                |     -     ||
| regions             | integer                           |     -     | Not used ? |
| parent              | integer                           |     -     | Not used ? |
| collection          | unsigned 64-bit integer           |     -     | ID of a [Collection](../collection) record |
| franchise           | unsigned 64-bit integer           |     -     | ID of a [Franchise](../franchise) record |
| hypes               | integer                           |     -     ||
| rating              | double                            |     -     ||
| popularity          | double                            |     -     ||
| aggregated_rating   | double                            |     -     ||
| rating_count        | integer                           |     -     ||
| game                | unsigned 64-bit integer           |     -     | ID of a [Game](../game) record if this record is a DLC/expansion |
| developers          | array of unsigned 64-bit integers |     -     | IDs of [Company](../company) records |
| publishers          | array of unsigned 64-bit integers |     -     | IDs of [Company](../company) records |
| game_engines        | array of unsigned 64-bit integers |     -     | IDs of [Game engine](../game-engine) records |
| category            | integer                           |     -     | See the [Game category](../../enum-fields/game-category) value reference |
| time_to_beat        | object                            |     -     | See the [Time to beat](../../misc-objects/time-to-beat) object reference |
| player_perspectives | array of unsigned 64-bit integers |     -     | IDs of [Player perspective](../player-perspective) records |
| game_modes          | array of unsigned 64-bit integers |     -     | IDs of [Game mode](../game-mode) records |
| keywords            | array of unsigned 64-bit integers |     -     | IDs of [Keyword](../keyword) records |
| themes              | array of unsigned 64-bit integers |     -     | IDs of [Theme](../theme) records |
| genres              | array of unsigned 64-bit integers |     -     | IDs of [Genre](../genre) records |
| first_release_date  | unsigned 64-bit integer           |     -     | Unix epoch |
| status              | integer                           |     -     | See the [Game status](../../enum-fields/game-status) value reference |
| release_dates       | array of objects                  |     -     | See the [Release date](../../misc-objects/release-date) object reference |
| alternative_names   | array of objects                  |     -     | See the [Alternative name](../../misc-objects/alternative-name) object reference |
| screenshots         | array of objects                  |     -     | See the [Screenshot](../../misc-objects/screenshot) object reference |
| videos              | array of objects                  |     -     | See the [Video](../../misc-objects/video) object reference |
| cover               | array of objects                  |     -     | See the [Cover](../../misc-objects/cover) object reference |
| esrb                | object                            |     -     | See the [ESRB](../../misc-objects/esrb) object reference |
| pegi                | object                            |     -     | See the [PEGI](../../misc-objects/pegi) object reference |
