---
date: "2017-01-10T19:03:21+10:00"
toc: true
next: "/endpoints/character"
prev: "/endpoints/"
weight: 3
title: "Private Endpoints"
pre: "<b class='fa fa-sitemap'></b> "
---

## What?
The IGDB API allows third party apps and services to reach IGDB.com's user-base. A user can sign into your app using their IGDB.com credentials, giving your app the ability to use and enhance their data.

## Why?
We introduced this functionality to enhance user experiences and reduce the development cost and time of your project. For example, one use case is allowing a user to rate games on your service and prefill games with their previous ratings from IGDB.com or any other service who is using our API. With this and other functionality of the API, your app could potentially be completely serverless.

## How?
[Authenticate](./authentication) first, then use [postman](https://www.getpostman.com/) to test private endpoints.

- [Authentication](./authentication)
- [List Entries](./private_list_entries)
- [Lists](./private_lists)
- [Ratings](./private_rating)