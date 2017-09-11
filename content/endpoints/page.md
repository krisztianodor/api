+++
date = "2017-01-10T19:08:39+10:00"
toc = true
next = "/endpoints/person"
prev = "/endpoints/keyword"
weight = 12
title = "Page"

+++

***URL path:*** /pages/

***Description:*** Our multipurpose page system is currently used for youtubers and media organisations.

***Example response***

```json
{
    "id": 1234,
    "name": "The Super channel.",
    "created_at": 1488287162348,
    "updated_at": 1488287515627,
    "slug": "the-super-channel",
    "url": "https://www.igdb.com/p/the-super-channel",
    "page_follows_count": 0,
    "description": "Playing awesome games quick!",
    "youtube": "https://www.youtube.com/channel/abc123",
    "logo": {
      "url": "//images.igdb.com/igdb/image/upload/t_thumb/abc123.png",
      "cloudinary_id": "abc123",
      "width": 240,
      "height": 240
    },
    "background": {
      "url": "//images.igdb.com/igdb/image/upload/t_thumb/abc123.png",
      "cloudinary_id": "abc123",
      "width": 1920,
      "height": 1080
    }
  }
```

***Fields***

| Name                | Type                              | Mandatory | Comment |
| ------------------- |:---------------------------------:|:---------:| ------- |
| id                  | unsigned 64-bit integer           |     +     ||
| slug                | string                            |     +     ||
| url                 | string                            |     +     ||
| created_at          | 64-bit integer                    |     +     | Unix epoch |
| updated_at          | 64-bit integer                    |     +     | Unix epoch |
| name                | string                            |     +     ||
| content             | text (long string)                |     -     ||
| category            | unsigned 64-bit integer           |     -     ||
| sub_category        | unsigned 64-bit integer           |     -     ||
| country             | integer                           |     -     | Please see the [ISO-3316-1](https://en.wikipedia.org/wiki/ISO_3166-1_numeric) reference |
| color               | unsigned 64-bit integer           |     -     ||
| user                | 64-bit integers                   |     -     ||
| game                | 64-bit integers                   |     -     | IDs of [Game](../company) records |
| company             | 64-bit integers                   |     -     | IDs of [Company](../company) records |
| description         | text (long string)                |     -     ||
| page_follows_count  | 64-bit integer                    |     -     ||
| logo                | objects                           |     -     | See the [Image](../../misc-objects/image) object reference |
| background          | objects                           |     -     | See the [Image](../../misc-objects/image) object reference |
| facebook            | string                            |     -     ||
| twitter             | string                            |     -     ||
| twitch              | string                            |     -     ||
| instagram           | string                            |     -     ||
| youtube             | string                            |     -     ||
| steam               | string                            |     -     ||
| linkedin            | string                            |     -     ||
| pinterest           | string                            |     -     ||
| soundcloud          | string                            |     -     ||
| google_plus         | string                            |     -     ||
| reddit              | string                            |     -     ||
| battlenet           | string                            |     -     ||
| origin              | string                            |     -     ||
| uplay               | string                            |     -     ||
| discord             | string                            |     -     ||
