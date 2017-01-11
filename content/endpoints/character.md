+++
date = "2017-01-11T17:44:12+10:00"
toc = true
next = "/endpoints/company"
prev = "/endpoints"
weight = 1
title = "Characters"

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
    "updated_at": 123456789,
    ...
}
```

***Fields***

| Name         | Type                              | Mandatory | Comment |
| ------------ |:---------------------------------:|:---------:| ------- |
| id           | unsigned 64-bit integer           |     +     ||
| name         | string                            |     +     ||
| slug         | string                            |     +     ||
| url          | string                            |     +     ||
| created_at   | unsigned 64-bit integer           |     +     | Unix epoch |
| updated_at   | unsigned 64-bit integer           |     +     | Unix epoch |
| mug_shot     | object                            |     -     | See the [Image](../../misc-objects/image) object reference |
| gender       | integer                           |     -     | See the [Gender](../../enum-fields/gender) value reference |
| country_name | string                            |     -     | Not used ? |
| akas         | array of strings                  |     -     | Name aliases - 'also known as' |
| species      | integer                           |     -     | See the [Species](../../enum-fields/species) value reference |
| games        | array of 64-bit unsigned integers |     -     | IDs of [Game](../game) records |
