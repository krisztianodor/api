---
title: "Webhooks"
---

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

That’s it! The data will now be sent to your webhook in the body of a post request. The data is a single json object representing an unexpanded entity, click anything in the category list below for examples.

You can ensure security by checking the `X-Secret` header in our request against your chosen secret.

## Removing a Webhook

- If a webhook fails to return a `200 OK` within 24 hours it will be removed.
- If a webhook returns `401 Unauthorized` it will be removed.
- You can manually unregister your webhook by sending a `DELETE` request to `/webhooks/ID` where ID is the ID returned during the registration process.

## Category keys

- [Game](../../endpoints/game): 1
- [GameVersion](../../endpoints/versions): 2
- [PulseSource](../../endpoints/pulse-source): 5
- [Keywords](../../endpoints/keyword): 6
- [Character](../../endpoints/character): 7
- [Company](../../endpoints/company): 8
- [GameEngine](../../endpoints/game-engine): 9
- [GameMode](../../endpoints/game-mode): 10
- [Person](../../endpoints/person): 11
- [Platform](../../endpoints/platform): 12
- [PulseGroup](../../endpoints/pulse-group): 13
- [Pulse](../../endpoints/pulse): 14
- [Theme](../../endpoints/theme): 15
- [Series](../../endpoints/collection): 16
- [PlayerPerspective](../../endpoints/player-perspective): 17
- [Page](../../endpoints/page): 18
- [Review](../../endpoints/review): 19
- [Franchise](../../endpoints/franchise): 20
- [Genre](../../endpoints/genre): 21
- [Release Date](../../endpoints/release-date): 22
- [Title (Job Title)](../../endpoints/title): 23