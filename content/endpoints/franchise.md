+++
date = "2017-01-14T19:07:25+10:00"
toc = true
next = "/endpoints/feed"
prev = "/endpoints/company"
weight = 6
title = "Franchise"

+++

***URL path:*** /franchises/

***Description:*** A list of video game franchises such as Star Wars.

***Example response***

```json
{
    "id": 1,
    "name": "Star Wars",
    "slug": "star-wars",
    "url": "https://www.igdb.com/franchises/star-wars",
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
| created_at | 64-bit integer                    |     +     | Unix epoch |
| updated_at | 64-bit integer                    |     +     | Unix epoch |
| games      | array of unsigned 64-bit integers |     -     | IDs of [Game](../game) records |
