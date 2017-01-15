+++
date = "2017-01-15T16:24:05+10:00"
toc = true
next = "/endpoints/release-date"
prev = "/endpoints/player-perspective"
weight = 13
title = "Pulse"

+++

***URL path:*** /pulses/

***Example response***

```json
{
    "id": 1,
    "category": 1,
    "title": "End of 2015 Discussions Megathread",
    "summary": "<!-- SC_OFF --><div class=\"md\"><h3>December 31</h3> ...",
    "published_at": 123456789,
    "url": "/r/Games/comments/3uuqv6/end_of_2015_discussions_megathread/"
    "uid": "3uuqv6",
    "author": "Forestl",
    "published_at": 1448892803000
}
```

***Fields***

| Name         | Type                    | Mandatory | Comment |
| ------------ |:-----------------------:|:---------:| ------- |
| id           | unsigned 64-bit integer |     +     ||
| category     | integer                 |     +     | See the [Pulse category](../../enum-fields/pulse-category) value reference |
| title        | string                  |     +     ||
| summary      | text (long string)      |     +     | Can contain HTML markup |
| url          | string                  |     +     | Publisher's pulse URL, can be path only. |
| uid          | string                  |     +     | Publisher's pulse entry uid |
| published_at | 64-bit integer          |     +     | Unix epoch |
| image        | string                  |     -     | URL pointing to the image |
| author       | string                  |     -     ||
