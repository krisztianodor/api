---
date: "2017-01-12T20:44:16+10:00"
toc: true
next: "/endpoints/page"
prev: "/endpoints/genre"
weight: 11
title: "Keyword"

---

***URL path:*** /keywords/

***Description:*** Keywords are words or phrases that get tagged to a game such as "world war 2" or "steampunk".

***Example response***

```json
{
    "id": 1,
    "name": "modern warfare",
    "slug": "modern-warfare",
    "url": "https://www.igdb.com/categories/modern-warfare",
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
