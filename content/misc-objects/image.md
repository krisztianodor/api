---
title: "Image"
---

{{% notice info %}}
To get different sized images, check out [our guide on how IGDB image urls are structured](../../references/images).
{{% /notice %}}

***Example***

```json
{
  "url": "//images.igdb.com/igdb/image/upload/t_thumb/l3n0zuklmgkloi1udslt.png",
  "width": 339,
  "height": 393,
  "cloudinary_id": "l3n0zuklmgkloi1udslt"
}
```

***Fields***

| Name          | Type             | Mandatory | Comment |
| ------------- |:----------------:|:---------:| ------- |
| url           | string           |     +     | Can be non-IGDB URL |
| cloudinary_id | string           |     -     | Cloudinary slug |
| width         | unsigned integer |     -     | The image's width in pixels |
| height        | unsigned integer |     -     | The image's height in pixels |
