+++
title = "Tag Numbers"
date = "2017-01-09T10:23:50+01:00"
toc = true
prev = "/misc-objects/platform-version"
next = "/misc-objects/platform-version-release-date"
weight = 5

+++

Tag numbers are a compact and fast way to do complex filtering on the IGDB API. The number calculation can be easily achieved with any programming language.

For example, take the genre filter option (reference list below) and the ID of a genre and you can create a tag number like this...

```
// Javascript
const genreTag = 1 << 28 // 268435456 - Note the bitshifting! Id (1) taken from the reference list below.
const shooterId = 5 // Can get this ID from the genres endpoint
const tagNumber = genreTag | shooterId // 268435461 - Use this tag number to filter by the shooter genre

```

**Reference**

* 0 = theme
* 1 = genre
* 2 = keyword
* 3 = game
* 4 = player_perspective
