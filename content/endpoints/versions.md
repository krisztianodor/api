---
date: "2017-01-13T21:35:46+10:00"
toc: true
next: "/enum-fields"
prev: "/endpoints/title"
weight: 23
title: "Versions"

---

***URL path:*** /game_versions/

***Description:*** Details about game editions and versions.

***Example response***

```json
[
    {
        "id": 1,
        "game": 28540,
        "created_at": 1505219853364,
        "updated_at": 1507493062339,
        "games": [
            28540,
            39045,
            39044,
            39047,
            39034,
            39046
        ],
        "url": "https://www.igdb.com/games/assassins-creed-origins/",
        "features": [
            {
                "title": "Notes",
                "description": "",
                "category": 1,
                "position": 3,
                "values": [
                    {
                        "game": 39034,
                        "value": ""
                    },
                    {
                        "game": 39046,
                        "value": "Ubisoft Store exclusive."
                    },
                    {
                        "game": 39045,
                        "value": ""
                    },
                    {
                        "game": 39044,
                        "value": ""
                    },
                    {
                        "game": 39047,
                        "value": "Only 999 copies available. Ubisoft Store exclusive."
                    },
                    {
                        "game": 28540,
                        "value": ""
                    }
                ]
            }
        ]
    }
]
```

You can see how this data is used here: https://www.igdb.com/games/assassins-creed-origins/versions

***Fields***

| Name       | Type                              | Mandatory | Comment |
| ---------- |:---------------------------------:|:---------:| ------- |
| id         | unsigned 64-bit integer           |     +     ||
| game       | unsigned 64-bit integer           |     +     | ID of the parent game |
| created_at | 64-bit integer                    |     +     | Unix epoch |
| updated_at | 64-bit integer                    |     +     | Unix epoch |
| games      | array of unsigned 64-bit integers |     -     | IDs of [Game](../game) records which are versions of the main game |
| url        | string                            |     +     | URL of the main game |
| features   | array of objects                  |     -     | Array of Features (see below) |

***Feature Object***

| Name        | Type                              | Mandatory | Comment |
| ----------- |:---------------------------------:|:---------:| ------- |
| title       | string                            |     +     | Title of the feature |
| description | string                            |     +     | Description of the feature |
| category    | 64-bit integer                    |     +     | Feature category (see below) |
| position    | 64-bit integer                    |     +     | Show at this index |
| values      | array of objects                  |     +     | Array of Feature values (see below) |

***Feature Value Object***

| Name        | Type                              | Mandatory | Comment |
| ----------- |:---------------------------------:|:---------:| ------- |
| game        | 64-bit integer                    |     +     | ID of the [Edition](../game) |
| value       | string                            |     +     | Feature's value |

***Feature Category***

- `0` boolean. String should either be "1" or "0" (yes or no).
- `1` string. Free text.
- `2` Preorder only. Whether the feature is only available in preorder. Value is always an empty string.

### Examples

***Get all editions***

`/game_versions/?fields=*&filter[games][exists]=1`

***Get all versions of a game***

`/game_versions/?fields=games.name&filter[games][exists]=1&filter[game][eq]=28540&expand=games`
