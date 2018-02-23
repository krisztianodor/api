---
title: "Authentication"
---

{{% notice info %}}
You must apply for a Client ID and Client Secret from us manually. There is no automated system for this. Please send an email to [sitefeedback@igdb.se](mailto:sitefeedback@igdb.se) explaining and linking to information about your app, the scopes you require, why you require those scopes and finally, the oAuth callback url.
{{% /notice %}}

Authentication is done using the [oAuth2 workflow](https://oauth.net/2/).

***oAuth Details***

- Authentication URL: `https://www.igdb.com/oauth/authorize`
- Authentication URL (mobile): `https://m.igdb.com/oauth/authorize`
- Token URL: `https://www.igdb.com/oauth/token.json`
- Scope: `public`

Other scopes are described in other pages within the private endpoints section.