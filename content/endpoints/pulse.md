+++
date = "2017-01-15T16:24:05+10:00"
toc = true
next = "/endpoints/pulse-source"
prev = "/endpoints/player-perspective"
weight = 15
title = "Pulse"

+++

***URL path:*** /pulses/

***Description:*** A single news article.

***Example response***

```json
{
    "id": 1,
    "pulse_source": 1,
    "title": "End of 2015 Discussions Megathread",
    "summary": "<!-- SC_OFF --><div class=\"md\"><h3>December 31</h3> ...",
    "url": "https://www.pcgamer.com/super-cool-article",
    "uid": "g87d799g520fhu2hk45jhk",
    "author": "Forestl",
    "published_at": 1448892803000
}
```

***Fields***

| Name         | Type                    | Mandatory | Comment |
| ------------ |:-----------------------:|:---------:| ------- |
| id           | unsigned 64-bit integer |     +     ||
| pulse_source | integer              |     +     | ID of a [Pulse Source](../../endpoints/pulse-source) |
| title        | string                  |     +     ||
| summary      | text (long string)      |     +     | Can contain HTML markup |
| url          | string                  |     +     | Publisher's pulse URL, can be path only. |
| uid          | string                  |     +     | Publisher's pulse entry unique id |
| created_at   | 64-bit integer                    |     +     | Unix epoch |
| updated_at   | 64-bit integer                    |     +     | Unix epoch |
| published_at | 64-bit integer          |     +     | Unix epoch |
| image        | string                  |     -     | URL pointing to the image |
| author       | string                  |     -     ||
| tags         | array of unsigned 32-bit integers |     -     | An array of [Tag Numbers](../../misc-objects/tagnumbers)  |
