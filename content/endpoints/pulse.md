+++
date = "2017-01-15T16:24:05+10:00"
toc = true
next = "/endpoints/pulse-source"
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
    "url": "/r/Games/comments/3uuqv6/end_of_2015_discussions_megathread/",
    "uid": "3uuqv6",
    "author": "Forestl",
    "published_at": 1448892803000
}
```

***Fields***

| Name         | Type                    | Mandatory | Comment |
| ------------ |:-----------------------:|:---------:| ------- |
| id           | unsigned 64-bit integer |     +     ||
| pulse_source_id | integer              |     +     | ID of a [Pulse Source](../../endpoints/pulse-source) |
| title        | string                  |     +     ||
| summary      | text (long string)      |     +     | Can contain HTML markup |
| url          | string                  |     +     | Publisher's pulse URL, can be path only. |
| uid          | string                  |     +     | Publisher's pulse entry uid |
| created_at   | 64-bit integer                    |     +     | Unix epoch |
| updated_at   | 64-bit integer                    |     +     | Unix epoch |
| published_at | 64-bit integer          |     +     | Unix epoch |
| image        | string                  |     -     | URL pointing to the image |
| author       | string                  |     -     ||
| tags         | array of unsigned 32-bit integers |     -     | This the tag system. The prefixes is: 0 = theme, 1 << 28 = genre, 2 << 28 = keyword, 3 << 28 = game, 4 << 28 = player_perspective  |
