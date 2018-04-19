---

title: "External Games"

---

***URL path:*** /external_games/

***Example response***

```json
{
    "id": 1,
    "name": "Crappy Day Enhanced Edition",
    "uid": "636700",
    "category": 1,
    "game": 28590,
    "year": 2017,
    "url": "http://store.com/app/636700/Crappy_Day_Enhanced_Edition/",
    "created_at": 1494493225413,
    "updated_at": 1494580982384
}
```

***Fields***

| Name            | Type                    | Mandatory | Comment |
| --------------- |:-----------------------:|:---------:| ------- |
| id              | unsigned 64-bit integer |     +     ||
| name            | string                  |     +     | Name of the game according to the external source |
| uid             | string                  |     +     | The external source's ID for the game |
| category        | integer                 |     +     | The external source (see list below) |
| game            | unsigned 64-bit integer |           | ID of an IGDB [Game](../game) record |
| year            | integer                 |           | The release year |
| url             | string                  |           | A game or reference URL |
| updated_at      | 64-bit integer          |     +     | Unix epoch |
| created_at      | 64-bit integer          |     +     | Unix epoch |

## Category IDs
```
Steam: 1
TheGamesDB: 2
GiantBomb: 3
Cooptimus: 4
GOG: 5
PushSquare: 6
isThereAnyDeal: 7
GamersGate: 8
GreenManGaming: 9
Youtube: 10
Microsoft: 11
NintendoLife: 12
Apple: 13
Twitch: 14
Android: 15
PlaystationStore: 16
PlaystationClient: 17
```