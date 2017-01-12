+++
date = "2017-01-11T20:46:03+10:00"
toc = true
next = "/references"
prev = "/endpoints/genre"
weight = 7
title = "Platform"

+++

***URL path:*** /platforms/

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

| Name             | Type                              | Mandatory | Comment |
| ---------------- |:---------------------------------:|:---------:| ------- |
| id               | unsigned 64-bit integer           |     +     ||
| name             | string                            |     +     ||
| slug             | string                            |     +     ||
| url              | string                            |     +     ||
| created_at       | unsigned 64-bit integer           |     +     | Unix epoch |
| updated_at       | unsigned 64-bit integer           |     +     | Unix epoch |
| logo             | object                            |     -     | See the [Image](../../misc-objects/image) object reference |
| shortcut         | string                            |     -     | Not used? |
| website          | string                            |     -     ||
| summary          | text (long string)                |     -     ||
| category         | integer                           |     -     | Not used? |
| product_family   | integer                           |     -     | Not used? |
| alternative_name | string                            |     -     ||
| generation       | integer                           |     -     ||
| games            | array of unsigned 64-bit integers |     -     | IDs of [Game](../game) records |
| versions         | array of objects                  |     -     | See the [Platform version](../../misc-objects/platform-version) object reference |
