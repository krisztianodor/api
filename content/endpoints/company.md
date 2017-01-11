+++
date = "2017-01-11T17:44:12+10:00"
toc = true
next = "/endpoints/game"
prev = "/endpoints"
weight = 1
title = "Company"

+++

***URL path:*** /companies/

***Example response***

```json
{
    "id": 642,
    "name": "testcompany1",
    "slug": "testcompany1",
    "url": "https://www.igdb.com/companies/testcompany1",
    "created_at": 123456789,
    "updated_at": 123456789,
    ...
}
```

***Fields***

| Name                 | Type                              | Mandatory | Comment |
| -------------------- |:---------------------------------:|:---------:| ------- |
| id                   | unsigned 64-bit integer           |     +     ||
| name                 | string                            |     +     ||
| slug                 | string                            |     +     ||
| url                  | string                            |     +     ||
| created_at           | unsigned 64-bit integer           |     +     | Unix epoch |
| updated_at           | unsigned 64-bit integer           |     +     | Unix epoch |
| logo                 | object                            |     -     | See the [Logo](../../misc-objects/logo) object reference |
| description          | string                            |     -     ||
| country              | integer                           |     -     | Please see the [ISO-3316-1](https://en.wikipedia.org/wiki/ISO_3166-1_numeric) reference |
| website              | string                            |     -     ||
| parent               | unsigned 64-bit integer           |     -     | ID of a [Company](../company) record |
| start_date           | unsigned 64-bit integer           |     -     | Unix epoch |
| start_date_category  | integer                           |     -     | See the [Date category](../../enum-fields/date-category) value reference |
| changed_company_id   | unsigned 64-bit integer           |     -     | ID of a [Company](../company) record |
| change_date          | unsigned 64-bit integer           |     -     | Unix epoch |
| change_date_category | integer                           |     -     | See the [Date category](../../enum-fields/date-category) value reference |
| twitter              | string                            |     -     | The URL of the Twitter profile |
| facebook             | string                            |     -     | The URL of the facebook profile |
| published            | array of 64-bit unsigned integers |     -     | IDs of [Game](../game) records |
| developed            | array of 64-bit unsigned integers |     -     | IDs of [Game](../game) records |
