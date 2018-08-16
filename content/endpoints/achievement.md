---
title: "Achievements"
---

{{% notice info %}}
This endpoint is not yet available. Once it is done it will be available for [paid tiers](https://api.igdb.com/pricing).
{{% /notice %}}

***URL path:*** /achievements/

***Description:*** Achievement data

***Example response***

```json
{
    "id": 1234,
    "name": "Boss Killer",
    "category": 1,
    "created_at": 1529500723000,
    "updated_at": 1529500723000,
    "icon": {
        "url": "https://images.igdb.com/igdb/uploads/t_thumb/dadsajj2jdda2.jpg",
        "cloudinary_id": "dadsajj2jdda2",
        "width": 1240,
        "height": 768
    },
    "game": 41233,
    "rank": 3,
    "external_id": "AKM_E123DDD",
    "description": "Defeat the end boss!",
    "owners": 32321,
    "owners_percentage": 42.31233,
    "tags": ["Tag1", "Tag2", "Tag3"],
    "language": 1
}
```

***Fields***

| Name       | Type                              | Mandatory | Comment |
| ---------- |:---------------------------------:|:---------:| ------- |
| id         | unsigned 64-bit integer           |     +     ||
| name       | string                            |     +     ||
| category   | unsigned 64-bit integer           |     +     | ID of an [Achievement Source](../../enum-fields/achievement-source) (steam, playstation etc) |
| icon       | object                            |     -     | See the [Image](../../misc-objects/image) object reference |
| game       | array of unsigned 64-bit integers |     -     | IDs of [Game](../game) records |
| rank       | unsigned 64-bit integer           |     -     | ID of an [Achievement Rank](../../enum-fields/achievement-rank) |
| description | string                           |     -     | Description of the achievement. Usually how to obtain it. |
| external_id | string                           |     +     | The ID given to the achievement by the external service |
| owners     | 64-bit integer                    |     -     | Number of people who own that achievement |
| owners_percentage | float                      |     -     | Percent of people who own the game and own the achievement |
| tags       | array of strings                  |     -     | Relevant words and terms associated with this achievement |
| language   | unsigned integer                  |     -     | ID of a [Region](../../enum-fields/region) |
| created_at | 64-bit integer                    |     +     | Unix epoch |
| updated_at | 64-bit integer                    |     +     | Unix epoch |
