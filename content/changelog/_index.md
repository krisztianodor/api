---
toc: true
weight: 1
title: "Change Log"
pre: "<b class='fa fa-line-chart'></b> "
post: " <b class='menu-label'>20th April, 2018</b>"
---

16th August, 2018
---

- Added language (region) to [achievements](https://igdb.github.io/api/endpoints/achievement/)

12th July, 2018

- Added [achievements](https://igdb.github.io/api/endpoints/achievement/)

20th April, 2018
---

- Added [private endpoints](https://igdb.github.io/api/private-endpoints/) to authenticate, get and set info for IGDB users.
- Added artwork to [games](https://igdb.github.io/api/endpoints/game/)
- Added [examples when dealing with editions](https://igdb.github.io/api/examples/#get-versions-editions-of-a-game)

13th February, 2018
---

Finally, we have added support for [CORS](https://developer.mozilla.org/en-US/docs/Web/HTTP/CORS) and other headers in the API. You can read about how to enable it for your project here: https://igdb.github.io/api/references/cors/. If you're using Ionic or Browser javascript, this is good news for you!

The limit has been increased to 3000 for pro tiers. The catch is you will need to prefix your URLs with `/pro/` to enable this limit. You can read more about how to use the new limit here: https://igdb.github.io/api/references/pagination/

16th November, 2017
---

Webhooks allow us to push data to you when it is added or updated. Instead of polling the API for changes, you can listen on your HTTP endpoint (Webhook) and we will deliver the data to you.

Check out the documentation here: https://igdb.github.io/api/references/webhooks/

Webhooks are only available on [Pro, Ultra and Enterprise plans](https://api.igdb.com/pricing).

1st November, 2017
---

We added the `version_parent` field to games which you can use to differentiate between version/editions and main games.

To filter them out, check out the example here: https://igdb.github.io/api/examples/#search-games-but-exclude-versions-editions

We added the versions/editions feature which allows you to clearly see the various release editions of each game and their features. https://www.igdb.com/games/assassins-creed-origins/versions

We have made this data available through our API via the game_versions endpoint.

https://igdb.github.io/api/endpoints/versions/

18th September, 2017
---

The external field connects external service Ids to ours. You can now access Steam IDs by adding `external.steam` to your fields parameter.

4th September, 2017
---

- No filters can currently be used for the `id` field. We updated the docs to let everyone know.
- However, since there was no way to remove specific games from results, the `not_in` postfix is now supported.

You can read more here: https://igdb.github.io/api/references/filters/#available-postfixes

30th August, 2017
---

API

- Fixed bug where filtering by ISO release date (YYYY-MM-DD) returned error.
- Fixed a bug where the `eq` postfix had no matches.
- Fixed a bug where ordering by name had no matches.
- Added game->publisher and game->developer expand support.
- Added `franchises` field to games which will replace `franchise` in the next major version.
- Updated the search algorithm to be more relevant and forgiving.

Documentation

- [Added a list of expandable items](https://igdb.github.io/api/references/expander/)
- [Added some error code descriptions](https://igdb.github.io/api/references/errors/)
- [Added a more detailed explanation of how pagination works](https://igdb.github.io/api/references/pagination/)

18th August, 2017
---

- The credits endpoint has been added and documented here: https://igdb.github.io/api/endpoints/credit/
- The titles (Job Titles) endpoint has been added and documented here: https://igdb.github.io/api/endpoints/title/
- Updated games documentation to describe the "games" field which is a list of similar games: https://igdb.github.io/api/endpoints/game/

16th August, 2017
---

Big news today, we're starting a public changelog so you're always
up to date with all the updates, improvements and fixes that are
made in api.

Even though we work on the api all the time, sometimes
it may seem that not much is happening. This changelog is here to
improve that very important part of the communication between you and us.

You'll always receive an update when we change something, or if needed, all things we've changed is available on our
[public changelog page](https://igdb.github.io/api/changelog/).
