+++
date = "2017-01-09T10:22:39+01:00"
toc = true
next = "/basics/examples"
prev = "/basics"
weight = 2
title = "Endpoints"

+++

**This page is deprecated and it's content is being migrated to other pages.**

## Review 

> /reviews/

* id u64
* created_at: date
* updated_at: date
* username: string
* slug: string
* url: string
* title: string
* game: integer
* category: integer
* likes: integer
* views: integer
* rating_category: integer
* platform: integer
* video: string
* introduction: string
* content: string
* conclusion: string
* positive_points: string
* negative_points: string
* _score: float (Optional)
* error: Array of strings



## ReleaseDate 

> /release_dates/

* id u64
* game: integer
* category: integer
* platform: integer
* date: date
* region: integer
* y: integer
* m: integer
* human: string
* _score: float (Optional)
* error: Array of strings

