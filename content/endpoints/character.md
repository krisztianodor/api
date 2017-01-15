+++
date = "2017-01-11T17:44:12+10:00"
toc = true
next = "/endpoints/collection"
prev = "/endpoints"
weight = 1
title = "Character"

+++

***URL path:*** /characters/

***Example response***

```json
{
    "id": 1,
    "name": "Urdnot Wrex",
    "slug": "urdnot-wrex",
    "url": "https://www.igdb.com/characters/urdnot-wrex",
    "created_at": 123456789,
    "updated_at": 123456789
}
```

***Used fields***

| Name         | Type                              | Mandatory | Comment |
| ------------ |:---------------------------------:|:---------:| ------- |
| id           | unsigned 64-bit integer           |     +     ||
| name         | string                            |     +     ||
| slug         | string                            |     +     ||
| url          | string                            |     +     ||
| created_at   | 64-bit integer                    |     +     | Unix epoch |
| updated_at   | 64-bit integer                    |     +     | Unix epoch |
| mug_shot     | object                            |     -     | See the [Image](../../misc-objects/image) object reference |
| gender       | integer                           |     -     | See the [Gender](../../enum-fields/gender) value reference |
| akas         | array of strings                  |     -     | Name aliases - 'also known as' |
| species      | integer                           |     -     | See the [Species](../../enum-fields/species) value reference |
| games        | array of unsigned 64-bit integers |     -     | IDs of [Game](../game) records |

***Unused fields***

These fields are present in the meta field list but has no data for any of the entities.

| Name |
| ---- |
| country_name |
