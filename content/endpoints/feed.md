+++
date = "2017-01-10T19:08:39+10:00"
toc = true
next = "/endpoints/game"
prev = "/endpoints/franchise"
weight = 5
title = "Feed"

+++

***URL path:*** /feeds/

***Example response***

```json
{
    "id": 1234,
    "created_at": 1489255204000,
    "updated_at": 1490353040531,
    "url": "https://www.igdb.com/feed/ya",
    "content": "Testing the new feed items.",
    "category": 7
  }
```

***Fields***

| Name                | Type                              | Mandatory | Comment |
| ------------------- |:---------------------------------:|:---------:| ------- |
| id                  | unsigned 64-bit integer           |     +     ||
| url                 | string                            |     +     ||
| created_at          | 64-bit integer                    |     +     | Unix epoch |
| updated_at          | 64-bit integer                    |     +     | Unix epoch |
| content             | text (long string)                |     -     ||
| category            | unsigned 64-bit integer           |     -     ||
| user                | unsigned 64-bit integer           |     -     | ID of a [User](../user) record |
| games               | array of unsigned 64-bit integer  |     -     | ID of a [Game](../game) record |
| title               | string                            |     -     ||
| feed_likes_count    | 64-bit integer                    |     -     ||

