+++
title = "Webhooks"
date = "2017-11-16T10:23:50+01:00"
toc = true
prev = "/references/tag-numbers"
weight = 9
+++

## What?

Webhooks allow us to push data to you when it is added or updated. Instead of polling the API for changes, you can listen on your HTTP endpoint (Webhook) and we will deliver the data to you.

{{% notice info %}}
Webhooks are only available on [Pro, Ultra and Enterprise plans](https://api.igdb.com/pricing).
{{% /notice %}}

## How to register your webhook

Make a POST request to `/webhooks` via the IGDB API and include the following as the BODY of the request or as url encoded form parameters...

```javascript
{
    "webhook": {
        "url": "YOUR_WEBHOOK_URL", // url that the data will be sent to.
        "category": 1, // which kind of data you want to receive.
        "secret": "YOUR_SECRET" // we will send this back to you in each request.
    }
}
```

On registering your webhook you will receive a response like this...

```javascript
{
    "id": 42, // A unique ID for the webhook
    "url": "YOUR_WEBHOOK_URL", // Your chosen URL
    "category": 1, // Your chosen category
    "last_failed_at": 1510826647000, // When the webhook last failed in unix time
    "secret": "YOUR_SECRET" // Your chosen secret
}
```

That’s it! The data will now be sent to your webhook.

You can ensure security by checking the `X-Secret` header in our request against your chosen secret.

## Removing a Webhook

- If a webhook fails to return a `200 OK` within 24 hours it will be removed.
- If a webhook returns `401 Unauthorized` it will be removed.
- You can manually unregister your webhook by sending a `DELETE` request to `/webhooks/ID` where ID is the ID returned during the registration process.

## Category keys
```
Game: 1
GameVersion: 2
SocialMetricSource: 3
SocialMetric: 4
PulseSource: 5
Category: 6
Character: 7
Company: 8
GameEngine: 9
GameMode: 10
Person: 11
Platform: 12
PulseGroup: 13
Pulse: 14
Theme: 15
Collection: 16
PlayerPerspective: 17
Page: 18
Review: 19
Franchise: 20
Genre: 21
ReleaseDate: 22
Title (Job Title): 23
```