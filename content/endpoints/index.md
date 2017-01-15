+++
date = "2017-01-10T19:03:21+10:00"
toc = true
next = "/endpoints/character"
prev = "/basics/examples"
weight = 0
title = "Endpoints"
icon = "<b class='fa fa-sitemap'></b>"

+++

## General information

{{% notice tip %}}
Test endpoints using the [Mashape sandbox](https://market.mashape.com/igdbcom/internet-game-database). Alternatively, we highly recommend [postman](https://www.getpostman.com/) to perfect your requests.
{{% /notice %}}

In order to communicate with the server, you will have to send these headers.

| HTTP Header   | Value |
| ------------- | ----- |
| X-Mashape-Key | The key from your Mashape account |
| Accept        | application/json |

## Common fields in responses

All the responses may contain the following fields in the result:

| Name   | Type             | Mandatory |
| ------ |:----------------:|:---------:|
| _score | float            |     -     |
| error  | array of strings |     -     |

* Note: all unix epoch fields' values are in milliseconds.
