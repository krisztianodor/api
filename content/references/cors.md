---
title: "CORS for JS & Ionic"
---

### Cross-Origin Resource Sharing

[Cross-Origin Resource Sharing](https://developer.mozilla.org/en-US/docs/Web/HTTP/CORS) (CORS) is a mechanism that uses additional HTTP headers to let a user agent gain permission to access selected resources from a server on a different origin (domain) than the site currently in use. These security restrictions only affect browser-based javascript and mobile javascript frameworks like Ionic.

{{% notice info %}}
Enabling CORS is only available in [premium tiers](https://api.igdb.com/pricing). For free users you can set up a [proxy server](https://stackoverflow.com/questions/25468100/simple-php-proxy-with-persistent-url), [Ionic](https://blog.ionicframework.com/handling-cors-issues-in-ionic/) also has a guide for this.
{{% /notice %}}

To enable CORS, you need to register your domain by sending a POST request to the headers endpoint. To achieve this in [Postman](https://www.getpostman.com/)...

- Set the POST request url to `https://api-endpoint.igdb.com/headers/`.
- Set the body to the following json...

```
{
    "api_header": {
        "header": "Access-Control-Allow-Origin",
        "value": "yourdomain.com"
    }
}
```

- Change the value to...
    - For production on a specific domain, use `yourdomain.com` (of course, change to your actual domain).
    - For local development (localhost) or any domain, use `*`.
    - For Ionic, use `localhost:8100`.
- Send!

Future responses from the API will contain the special header required to access the API. `Access-Control-Allow-Origin: yourdomain.com`

To delete the header, send a DELETE request to `/headers/?header=Access-Control-Allow-Origin`.

{{% notice warning %}}
**IMPORTANT NOTE!** Regenerating your API Key (user-key) will invalidate all existing headers. Please ensure your application registers these headers on start up to ensure they are always associated with the current user-key.
{{% /notice %}}