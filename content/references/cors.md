+++
toc = true
next = "/references/expander"
prev = "/api/references"
weight = 0
title = "CORS for Javascript & Ionic"
+++

### Cross-Origin Resource Sharing

[Cross-Origin Resource Sharing](https://developer.mozilla.org/en-US/docs/Web/HTTP/CORS) (CORS) is a mechanism that uses additional HTTP headers to let a user agent gain permission to access selected resources from a server on a different origin (domain) than the site currently in use. A user agent makes a cross-origin HTTP request when it requests a resource from a different domain, protocol, or port than the one from which the current document originated.

These security restrictions only affect browser-based javascript and mobile javascript frameworks like Ionic.

{{% notice info %}}
Enabling CORS is only available in [premium tiers](https://api.igdb.com/pricing). For free users you can set up a [proxy server](https://stackoverflow.com/questions/25468100/simple-php-proxy-with-persistent-url), [Ionic](https://blog.ionicframework.com/handling-cors-issues-in-ionic/) also has a guide for this.
{{% /notice %}}

To enable CORS, you need to register your domain by sending a GET request to the following endpoint...
```
/cors/?domain=yourdomain.com
```

For Ionic you can also register localhost
```
/cors/?domain=localhost:8100
```

Future responses from the API will contain the special header required to access the API. `Access-Control-Allow-Origin: yourdomain.com`