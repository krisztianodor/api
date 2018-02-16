---
toc: true
next: "/references/pagination"
prev: "/references/images"
weight: 5
title: "Ordering"
date: "2017-01-09T10:23:54+01:00"

---

## What?

Ordering (Sorting) is used to order results by a specific field.

## How?

You can order results like this: `/games/?search=zelda&filter[rating][gte]=80&order=release_dates.date:desc`. Notice the appended `:desc` which could also be `:asc` if required.

You can also subfilter arrays by appending "max", "min", "sum", "avg" or "median".
For example, you can order games based on it's earliest release date like this: `/games/?search=zelda&order=release_dates.date:desc:min&limit=5`

#### Order by popularity
----------
Popularity parameter for games. You can access it like this:
`/games/?fields=name,popularity&order=popularity:desc`

The popularity number is calculated using usage statistics of game pages at https://www.igdb.com

## Where?

Ordering can be used on any entity.

