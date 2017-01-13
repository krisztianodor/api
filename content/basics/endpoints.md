+++
date = "2017-01-09T10:22:39+01:00"
toc = true
next = "/basics/examples"
prev = "/basics"
weight = 2
title = "Endpoints"

+++

**This page is deprecated and it's content is being migrated to other pages.**

## Person 

> /people/

* id u64
* name: string
* created_at: date
* updated_at: date
* slug: string
* url: string
* dob: date
* gender: integer
* country: integer
* mug_shot:
  * url: string
  * cloudinary_id: string
  * width: integer
  * height: integer
* bio: string
* description: string
* parent: integer
* homepage: string
* twitter: string
* linkedin: string
* google_plus: string
* facebook: string
* instagram: string
* tumblr: string
* soundcloud: string
* pinterest: string
* youtube: string
* nicknames: string
* loves_count: integer
* voice_acted: integer
* games: integer
* _score: float (Optional)
* error: Array of strings



## Pulse 

> /pulses/

* id u64
* category: integer
* title: string
* summary: string
* image: string
* url: string
* uid: string
* author: string
* published_at: date
* _score: float (Optional)
* error: Array of strings



## Theme 

> /themes/

* id u64
* name: string
* created_at: date
* updated_at: date
* slug: string
* url: string
* games: integer
* _score: float (Optional)
* error: Array of strings



## Collection 

> /collections/

* id u64
* name: string
* created_at: date
* updated_at: date
* slug: string
* url: string
* games: integer
* _score: float (Optional)
* error: Array of strings



## PlayerPerspective 

> /player_perspectives/

* id u64
* name: string
* created_at: date
* updated_at: date
* slug: string
* url: string
* games: integer
* _score: float (Optional)
* error: Array of strings



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



## Franchise 

> /franchises/

* id u64
* name: string
* created_at: date
* updated_at: date
* slug: string
* url: string
* games: integer
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

