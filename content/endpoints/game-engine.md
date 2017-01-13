+++
date = "2017-01-12T16:55:43+10:00"
toc = true
next = "/endpoints/game-mode"
prev = "/endpoints/game"
weight = 5
title = "Game engine"

+++

***URL path:*** /game_engines/

***Example response***

```json
{
    "id": 2,
    "name": "Frostbite",
    "slug": "frostbite",
    "url": "https://www.igdb.com/game_engines/frostbite",
    "created_at": 123456789,
    "updated_at": 123456789,
    ...
}
```

***Fields***

| Name       | Type                              | Mandatory | Comment |
| ---------- |:---------------------------------:|:---------:| ------- |
| id         | unsigned 64-bit integer           |     +     ||
| name       | string                            |     +     ||
| slug       | string                            |     +     ||
| url        | string                            |     +     ||
| created_at | unsigned 64-bit integer           |     +     | Unix epoch |
| updated_at | unsigned 64-bit integer           |     +     | Unix epoch |
| logo       | object                            |     -     | See the [Image](../../misc-objects/image) object reference |
| games      | array of 64-bit unsigned integers |     -     | IDs of [Game](../game) records |
| companies  | array of 64-bit unsigned integers |     -     | IDs of [Company](../company) records |
| platforms  | array of 64-bit unsigned integers |     -     | IDs of [Platforms](../platform) records |
