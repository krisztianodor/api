+++
date = "2017-01-13T21:35:46+10:00"
toc = true
next = "/endpoints/title"
prev = "/endpoints/review"
weight = 18
title = "Theme"

+++

***URL path:*** /themes/

***Example response***

```json
{
    "id": 1,
    "name": "Action",
    "slug": "action",
    "url": "https://www.igdb.com/themes/action",
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
