+++
date = "2017-01-13T21:35:46+10:00"
toc = true
next = "/endpoints/company"
prev = "/endpoints/character"
weight = 2
title = "Collection"

+++

***URL path:*** /collections/

***Example response***

```json
{
    "id": 1,
    "name": "Bioshock",
    "slug": "bioshock",
    "url": "https://www.igdb.com/collections/bioshock",
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
