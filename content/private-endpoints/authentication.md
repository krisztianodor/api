---
title: "Authentication"
---

## What?
The IGDB API allows third party apps and services to reach IGDB.com's user-base. A user can sign into your app using their IGDB.com credentials, giving your app the ability to use and enhance their data.

## Why?
We introduced this functionality to enhance user experiences and reduce the development cost and time of your project. For example, one use case is allowing a user to rate games on your service and prefill games with their previous ratings from IGDB.com or any other service who is using our API. With this and other functionality of the API, your app could potentially be completely serverless.

## How?
{{% notice info %}}
You must apply for a Client ID and Client Secret from us manually. There is no automated system for this. Please send an email to [support@igdb.com](mailto:support@igdb.com) explaining and linking to information about your app, the scopes you require, why you require those scopes and finally, the oAuth2 callback url.
{{% /notice %}}

Authentication is done using the [oAuth2 workflow](https://oauth.net/2/).

***oAuth Details***

- Authentication URL: `https://www.igdb.com/oauth/authorize`
- Authentication URL (mobile): `https://m.igdb.com/oauth/authorize`
- Token URL: `https://www.igdb.com/oauth/token.json`
- Scope: `public`

Other scopes are described in other pages within the private endpoints section.