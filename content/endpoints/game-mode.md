---





title: "Game mode"

---

***URL path:*** /game_modes/

***Description:*** Single player, Multiplayer etc

***Example response***

```json
{
    "id": 1,
    "name": "Single player",
    "slug": "single-player",
    "url": "https://www.igdb.com/game_modes/single-player",
    "created_at": 123456789,
    "updated_at": 123456789
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
| games      | array of unsigned 64-bit integers |     -     | IDs of [Game](../game) records |
