---





title: "Review"

---

***URL path:*** /reviews/

***Example response***

```json
{
    "id": 7,
    "username": "thespikez",
    "slug": "trash-of-the-year",
    "url": "https://www.igdb.com/games/into-the-dark/reviews/trash-of-the-year",
    "title": "Trash of the year.",
    "created_at": 123456789,
    "updated_at": 123456789,
    "game": 6613,
    "category": 1,
    "likes": 0,
    "views": 138,
    "rating_category": 2,
    "platform": 6,
    "introduction": "Don't expect a good game here",
    "content": "Don't even ..."
}
```

***Fields***

| Name            | Type                    | Mandatory | Comment |
| --------------- |:-----------------------:|:---------:| ------- |
| id              | unsigned 64-bit integer |     +     ||
| username        | string                  |     +     ||
| slug            | string                  |     +     ||
| url             | string                  |     +     ||
| title           | string                  |     +     ||
| created_at      | 64-bit integer          |     +     | Unix epoch |
| updated_at      | 64-bit integer          |     +     | Unix epoch |
| game            | unsigned 64-bit integer |     +     | ID of a [Game](../game) record |
| category        | integer                 |     +     | ? |
| likes           | unsigned integer        |     +     ||
| views           | unsigned integer        |     +     ||
| rating_category | unsigned integer        |     +     | ? |
| platform        | unsigned 64-bit integer |     -     | ID of a [Platform](../platform) record |
| video           | string                  |     -     | Youtube video slug |
| introduction    | text (long string)      |     -     ||
| content         | text (long string)      |     -     ||
| conclusion      | text (long string)      |     -     ||
| positive_points | text (long string)      |     -     ||
| negative_points | text (long string)      |     -     ||
