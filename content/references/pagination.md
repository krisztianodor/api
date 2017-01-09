+++
weight = 4
title = "Pagination"
date = "2017-01-09T10:24:00+01:00"
toc = true
next = "/next/path"
prev = "/prev/path"

+++

### Simple Pagination
Here is an example for how to paginate: (the default limit is 10)
`/platforms/?limit=33`

There is also an offset:
`/platforms/?limit=33&offset=22`

### Scroll API
{{% notice warning %}}
This is only available for [Ultra subscribers](https://market.mashape.com/igdbcom/internet-game-database/pricing) on Mashape.
{{% /notice %}}

In order to get more than 10,000 results and get blazing fast response times you need to use the new Scroll extension. 

To use it you need to supply a scroll param to the search like this:
`/games?order=rating&scroll=1`

It will return results and include a couple of extra headers: **X-Next-Page** and **X-Count**.   
**X-Next-Page** includes a path for the next page: 

`https://igdbcom-internet-game-database-v1.p.mashape.com/games/scroll/cXVlcnlBbmRGZXRjaDsxOzE5OkhBck1wUUZsUnpPUDgwMGtDN0hSdEE7MDs=`  

**X-Count** has the number of results: `1337`  

For each call it will take new parts of the list until you get to the end of the list.
There is a timeout on the list which is 3 minutes and for each subsequent call it refreshes this timeout.