---





title: "Title"

---

***URL path:*** /titles/

***Description:*** Job titles in the industry.

***Example response***

```json
{
        "id": 12003,
        "name": "Brand Presentation Director",
        "created_at": 1424455593564,
        "updated_at": 1424455593588,
        "slug": "brand-presentation-director",
        "url": "https://www.igdb.com/titles/brand-presentation-director",
        "games": [
            6801
        ]
}
```

***Fields***

| Name       | Type                              | Mandatory | Comment |
| ---------- |:---------------------------------:|:---------:| ------- |
| id         | unsigned 64-bit integer           |     +     ||
| name       | string                            |     +     ||
| slug       | string                            |     +     ||
| url        | string                            |     +     ||
| created_at | 64-bit integer                    |     +     | Unix epoch |
| updated_at | 64-bit integer                    |     +     | Unix epoch |
| description      | string |     -     | |
| games      | array of unsigned 64-bit integers |     -     | IDs of [Game](../game) records (expandable) |
