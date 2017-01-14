+++
date = "2017-01-13T21:35:46+10:00"
toc = true
next = "/endpoints/theme"
prev = "/endpoints/platform"
weight = 10
title = "Player perspective"

+++

***URL path:*** /player_perspectives/

***Example response***

```json
{
    "id": 1,
    "name": "First person",
    "slug": "first-person",
    "url": "https://www.igdb.com/player_perspectives/first-person",
    "created_at": 123456789,
    "updated_at": 123456789,
    "games": [
        1,
        2,
        3,
        ...
    ]
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
| games      | array of 64-bit unsigned integers |     -     | IDs of [Game](../game) records |
