+++
date = "2017-01-11T20:46:03+10:00"
toc = true
next = "/endpoints/platform"
prev = "/endpoints/keyword"
weight = 10
title = "Person"

+++

***URL path:*** /people/

***Example response***

```json
{
    "id": 557,
    "name": "Adam Longton",
    "slug": "adam-longton",
    "url": "https://www.igdb.com/people/adam-longton",
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

| Name        | Type                              | Mandatory | Comment |
| ----------- |:---------------------------------:|:---------:| ------- |
| id          | unsigned 64-bit integer           |     +     ||
| name        | string                            |     +     ||
| slug        | string                            |     +     ||
| url         | string                            |     +     ||
| created_at  | 64-bit integer                    |     +     | Unix epoch |
| updated_at  | 64-bit integer                    |     +     | Unix epoch |
| mug_shot    | object                            |     -     | See the [Image](../../misc-objects/image) object reference |
| games       | array of unsigned 64-bit integers |     -     | IDs of [Game](../game) records |
| voice_acted | array of unsigned 64-bit integers |     -     | IDs of [Game](../game) records |
