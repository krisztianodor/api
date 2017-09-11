+++
date = "2017-01-11T20:46:03+10:00"
toc = true
next = "/endpoints/platform"
prev = "/endpoints/page"
weight = 13
title = "Person"

+++

***URL path:*** /people/

***Description:*** Individuals who are in the video games industry

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
| characters  | array of unsigned 64-bit integers |     -     | IDs of [Character](../character) records |
| voice_acted | array of unsigned 64-bit integers |     -     | IDs of [Game](../game) records |

***Unused fields***

These fields are present in the meta field list but has no data for any of the entities.

| Name |
| ---- |
| bio |
| country |
| description |
| dob |
| parent |
| homepage |
| twitter |
| linkedin |
| google_plus |
| facebook |
| instagram |
| tumblr |
| soundcloud |
| pinterest |
| youtube |
| nicknames |
| loves_count |
