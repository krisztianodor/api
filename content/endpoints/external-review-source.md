---
date: "2018-02-15T16:28:44+10:00"
toc: true
next: "/endpoints/external-review"
prev: "/endpoints/credit"
weight: 5
title: "External Review Source"

---

***URL path:*** /external_review_source/

***Example response***

```json
{
    "id": 50331,
    "game": 7621,
    "source": 30,
    "score": 40,
    "url": "http://www.impulsegamer.com/rime-switch-review/"
}
```

***Fields***

| Name            | Type                    | Mandatory | Comment |
| --------------- |:-----------------------:|:---------:| ------- |
| id              | unsigned 64-bit integer |     +     ||
| game            | unsigned 64-bit integer |     +     | ID of a [Game](../game) record |
| source          | unsigned 64-bit integer |     +     | ID of an [External Review Source](../external-review-source) |
| url             | string                  |     +     ||
| score           | integer                 |           | The review score out of 100 |