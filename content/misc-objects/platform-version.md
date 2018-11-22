---





title: "Platform version"

---

***Example***

```json
{
    "url": "https://www.igdb.com/platforms/linux/version/initial-version-04719e9f-bc9e-4b08-982c-50c495215228",
    "logo": {
        "url": "//images.igdb.com/igdb/image/upload/t_thumb/pilogm8rythuvcg4cslx.png",
        "width": 1344,
        "height": 742,
        "cloudinary_id": "pilogm8rythuvcg4cslx"
    },
    "name": "Initial version",
    "slug": "initial-version-04719e9f-bc9e-4b08-982c-50c495215228",
    "summary": "Linux is a free and open-source (FOSS/FLOSS) Operating System. ...",
    "release_dates": [
        {"date": 694137600000, "region": 8}
    ]
}
```

***Fields***

| Name          | Type               | Mandatory | Comment |
| ------------- |:------------------:|:---------:| ------- |
| url           | string             |     +     ||
| name          | string             |     +     ||
| slug          | string             |     +     ||
| cpu           | string             |     -     ||
| os           | string             |     -     ||
| media         | string             |     -     ||
| memory        | string             |     -     ||
| online        | string             |     -     ||
| output        | string             |     -     ||
| storage       | string             |     -     ||
| graphics      | string             |     -     ||
| sound         | string             |     -     ||
| resolutions   | string             |     -     ||
| connectivity   | string             |     -     ||
| logo          | object             |     -     | See the [Image](../../misc-objects/image) object reference |
| summary       | text (long string) |     -     ||
| release_dates | array of objects   |     -     | See the [Platform version release date](../../misc-objects/platform-version-release-date) object reference |
| developers | array of objects   |     -     | See the [Platform company](../../misc-objects/platform-company) object reference |
| manufacturers | array of objects   |     -     | See the [Platform company](../../misc-objects/platform-company) object reference |
