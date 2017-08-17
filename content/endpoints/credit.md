+++
date = "2017-01-13T21:35:46+10:00"
toc = true
next = "/enum-fields"
prev = "/endpoints/review"
weight = 17
title = "Credits"

+++

***URL path:*** /credits/

***Example response***

```json
    {
        "id": 268458528,
        "created_at": 1448841876902,
        "updated_at": 1448841876902,
        "category": 1,
        "game": 6913,
        "position": 122,
        "person": 96942,
        "character": 441
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
| game       | unsigned 64-bit integer           |     -     | ID of a [Game](../game) record (expandable) |
| category   | integer                           |     -     | See the [Credit category](../../enum-fields/credit-category) value reference |
| company    | unsigned 64-bit integer           |     -     | ID of a [Company](../company) record (expandable) |
| position    | unsigned 64-bit integer           |     -     | Position in the credits list. |
| person    | unsigned 64-bit integer           |     -     | ID of a [Person](../person) record (expandable) |
| character    | unsigned 64-bit integer           |     -     | ID of a [Character](../character) record (expandable) |
| title    | unsigned 64-bit integer           |     -     | ID of a [Title](../title) record (expandable) |
| country    | unsigned 64-bit integer           |     -     | Please see the [ISO-3316-1](https://en.wikipedia.org/wiki/ISO_3166-1_numeric) reference |
| credited_name        | string                            |     -     | Credited name of the person only for overriding when misspelled or changed in credits. |
| character_credited_name        | string                            |     -     | Credited name of the character only for overriding when misspelled or changed in credits. |
