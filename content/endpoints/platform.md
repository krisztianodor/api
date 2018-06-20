---





title: "Platform"

---

***URL path:*** /platforms/

***Description:*** The hardware used to run the game or game delivery network

***Example response***

```json
{
    "id": 2,
    "name": "Wii",
    "slug": "wii",
    "url": "https://www.igdb.com/platforms/wii",
    "created_at": 123456789,
    "updated_at": 123456789,
    "games": [
      1,
      2,
      3,
      ...
    ]
}
```

***Fields***

| Name             | Type                              | Mandatory | Comment |
| ---------------- |:---------------------------------:|:---------:| ------- |
| id               | unsigned 64-bit integer           |     +     ||
| name             | string                            |     +     ||
| slug             | string                            |     +     ||
| url              | string                            |     +     ||
| created_at       | 64-bit integer                    |     +     | Unix epoch |
| updated_at       | 64-bit integer                    |     +     | Unix epoch |
| logo             | object                            |     -     | See the [Image](../../misc-objects/image) object reference |
| website          | string                            |     -     ||
| summary          | text (long string)                |     -     ||
| alternative_name | string                            |     -     ||
| generation       | integer                           |     -     ||
| games            | array of unsigned 64-bit integers |     -     | IDs of [Game](../game) records |
| versions         | array of objects                  |     -     | See the [Platform version](../../misc-objects/platform-version) object reference |

***Unused fields***

These fields are present in the meta field list but has no data for any of the entities.

| Name |
| ---- |
| shortcut |
| category |
| product_family 
|
