---
title: "User Profile"
---

***URL path:*** /me/

***Description:*** IGDB user profile

***Important:*** You can only access this information with a valid access token. And the profile is connected to the accesstoken.

***Example response***
```json
{
    "id": 7331,
    "username": "1337",
    "slug": "1337",
    "url": "https://www.igdb.com/users/1337",
    "created_at": 1484834834279,
    "updated_at": 1510306478341,
    "role": 9,
    "color": 5,
    "avatar": {
        "url": "//images.igdb.com/igdb/image/upload/t_thumb/yvk53qfbt3vwjz2iwevw.jpg",
        "cloudinary_id": "yvk53qfbt3vwjz2iwevw",
        "width": 600,
        "height": 600
    },
    "background": {
        "url": "//images.igdb.com/igdb/image/upload/t_thumb/gstfbf0007llxsj9t8mn.jpg",
        "cloudinary_id": "gstfbf0007llxsj9t8mn",
        "width": 8000,
        "height": 4500
    }
}
```

***Fields***

| Name         | Type                    | Mandatory | Comment |
| ------------ |:-----------------------:|:---------:| ------- |
| id           | unsigned 64-bit integer |     +     ||
| username     | string                  |     +     ||
| slug         | string                  |     +     ||
| updated_at   | 64-bit integer          |     +     | Unix epoch |
| created_at   | 64-bit integer          |     +     | Unix epoch |
| role         | 64-bit integer          |     +     | type of user |
| color        | 64-bit integer          |     +     | profile color |
| avatar       | object                  |     +     | User cover image |
| background   | object                  |     +     | User background image |
