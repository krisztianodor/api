+++
date = "2017-01-15T16:24:05+10:00"
toc = true
next = "/endpoints/pulse"
prev = "/endpoints/pulse-group"
weight = 14
title = "Pulse Source"

+++

***URL path:*** /pulse_sources/

***Description:*** A news article source such as IGN.

***Example response***

```json
{
    "id": 1,
    "name": "Kotaku",
    "game": 4536,
    "page": 345
}
```

***Fields***

| Name         | Type                    | Mandatory | Comment |
| ------------ |:-----------------------:|:---------:| ------- |
| id           | unsigned 64-bit integer |     +     ||
| name     | string                 |     +     | Name of pulse source |
| game        | unsigned 64-bit integer                  |     +     | ID of a [Game](../game) record if this pulse source has a game connected to it |
| page      | unsigned 64-bit integer       |     +     | ID of a [Page](../page) record if this pulse source has a page connected to it  |
