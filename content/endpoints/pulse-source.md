+++
date = "2017-01-15T16:24:05+10:00"
toc = true
next = "/endpoints/release-date"
prev = "/endpoints/player-perspective"
weight = 13
title = "Pulse Source"

+++

***URL path:*** /pulse_sources/

***Example response***

```json
{
    "id": 1,
    "name": "Kotaku"
}
```

***Fields***

| Name         | Type                    | Mandatory | Comment |
| ------------ |:-----------------------:|:---------:| ------- |
| id           | unsigned 64-bit integer |     +     ||
| name     | string                 |     +     | Name of pulse source |
| game        | unsigned 64-bit integer                  |     +     | ID of a [Game](../game) record if this pulse source has a game connected to it |
| page      | unsigned 64-bit integer       |     +     | ID of a [Page](../page) record if this pulse source has a page connected to it  |


