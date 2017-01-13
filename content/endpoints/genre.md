+++
date = "2017-01-11T17:01:41+10:00"
toc = true
next = "/endpoints/keyword"
prev = "/endpoints/game-mode"
weight = 7
title = "Genre"

+++

***URL path:*** /genres/

***Example response***

```json
{
    "id": 2,
    "name": "Point-and-click",
    "slug": "point-and-click",
    "url": "https://www.igdb.com/genres/point-and-click",
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
| games      | array of unsigned 64-bit integers |     -     | IDs of [Game](../game) records |
