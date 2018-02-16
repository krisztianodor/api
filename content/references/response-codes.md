---
toc: true
next: "/references/tag-numbers"
prev: "/references/pagination"
weight: 7
title: "Response Codes"
date: "2017-07-28T10:23:47+01:00"
---

- **200**: OK! Good response!
    - This result may still contain an empty array which indicates there are no results for your query.
- **400**: Bad request
    - Something is wrong with the query parameters.
- **401**: Unauthorized!
    - You may not have a key, sign up at [api.igdb.com](https://api.igdb.com/pricing).
    - You may be sending the key via a GET parameter which is incorrect, please use the "user-key" header.
    - Your account may not have access to this specific endpoint. Upgrade at [api.igdb.com](https://api.igdb.com/pricing).
- **403**: Forbidden
    - You may have hit your usage cap. [Upgrade here](https://api.igdb.com/pricing).
    - You may be using browser javascript or ionic framework to make requests to the API and need to [enable CORs on your account](../cors).
- **500**: Internal Error
    - The server has done something wrong. This is a bug and should be reported.
