---
date: "2017-06-08T14:05:08+02:00"
toc: true
next: "/endpoints/pulse-source"
prev: "/endpoints/pulse"
weight: 17
title: "Pulse Group"

---

***URL path:*** /pulse_groups/

***Example response***

```json
{
  "id": 33,
  "name": "Dissidia Final Fantasy NT",
  "created_at": 1496847873582,
  "updated_at": 1496849184912,
  "published_at": 1496848080000,
  "tags": [
    805343199,
    1073741826
  ],
  "pulses": [
    141662,
    141667,
    141668
  ],
  "game": 36831
}
```

***Fields***

| Name       | Type                              | Mandatory | Comment |
| ---------- |:---------------------------------:|:---------:| ------- |
| id         | unsigned 64-bit integer           |     +     ||
| name       | string                            |     +     ||
| category   | 64-bit integer                    |     +     | Unused (for now) |
| created_at | 64-bit integer                    |     +     | Unix epoch |
| updated_at | 64-bit integer                    |     +     | Unix epoch |
| published_at | 64-bit integer                  |     +     | Unix epoch |
| tags       | array of unsigned 32-bit integers |     -     | An array of [Tag Numbers](../../references/tag-numbers) |
| pulses     | array of unsigned 64-bit integers |     -     | ID of a [Pulse](../pulse) item |
| game       | array of unsigned 64-bit integers |     -     | ID of a [Game](../game) |
