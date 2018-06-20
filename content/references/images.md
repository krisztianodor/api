---
title: "Images"
---

{{% notice info %}}
Images that are removed or replaced from IGDB.com exist for 30 days before they are removed. Keep that in mind when designing cache logic.
{{% /notice %}}

## Examples

`/games/1942?fields=screenshots`  
Here we retrieve the image properties of the game with the id "1942"

**Response:**  

    [
      {
        "id": 1942,
        "screenshots": [
          {
            "url": "//images.igdb.com/igdb/image/upload/t_thumb/z5t0yuhyiiui1ickwhgj.png",
            "cloudinary_id": "z5t0yuhyiiui1ickwhgj",
            "width": 1920,
            "height": 1080
          },
          {
            "url": "//images.igdb.com/igdb/image/upload/t_thumb/mnljdjtrh44x4snmierh.png",
            "cloudinary_id": "mnljdjtrh44x4snmierh",
            "width": 1920,
            "height": 1080
          }
        ]
      }
    ]

**Image url structure:**

`https://images.igdb.com/igdb/image/upload/t_screenshot_med_2x/dfgkfivjrhcksyymh9vw.jpg`

**Break down:**

`https://images.igdb.com/igdb/image/upload/t_{size}/{hash}.jpg`

`size` is one of the interchangeable size types listed below.
`hash` is the id of the image.
The image sizes are all maximum size but by appending `_2x` to any size, you can get retina (DPR 2.0) sizes (`cover_small_2x`).

| Name|Size  |Extra   |
|---|---|---|
| cover_small   | 90 x 128  | Fit   |
| screenshot_med  | 569 x 320  | Lfill, Center gravity  | 
| cover_big  | 227 x 320  |Fit    |
| logo_med | 284 x 160 |  Fit  |
| screenshot_big |889 x 500  | Lfill, Center gravity |
| screenshot_huge | 1280 x 720 | Lfill, Center gravity |
| thumb | 90 x 90 | Thumb, Center gravity  |
| micro | 35 x 35 | Thumb, Center gravity  |
| 720p | 1280 x 720 | Fit, Center gravity  |
| 1080p | 1920 x 1080 | Fit, Center gravity  |