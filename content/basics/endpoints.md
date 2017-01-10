+++
date = "2017-01-09T10:22:39+01:00"
toc = true
next = "/basics/examples"
prev = "/basics"
weight = 2
title = "Endpoints"

+++

**This page is deprecated and it's content is being migrated to other pages.**

## Character 

> /characters/

* id u64
* name: string
* created_at: date
* updated_at: date
* slug: string
* url: string
* mug_shot:
  * url: string
  * cloudinary_id: string
  * width: integer
  * height: integer
* gender: integer
* country_name: string
* akas: string
* species: integer
* games: integer
* _score: float (Optional)
* error: Array of strings



## Company 

> /companies/

* id u64
* name: string
* created_at: date
* updated_at: date
* slug: string
* url: string
* logo:
  * url: string
  * cloudinary_id: string
  * width: integer
  * height: integer
* description: string
* start_date: date
* start_date_category: integer
* country: integer
* website: string
* parent: integer
* changed_company_id: integer
* change_date: date
* change_date_category: integer
* twitter: string
* facebook: string
* published: integer
* developed: integer
* _score: float (Optional)
* error: Array of strings



## GameEngine 

> /game_engines/

* id u64
* name: string
* created_at: date
* updated_at: date
* logo:
  * url: string
  * cloudinary_id: string
  * width: integer
  * height: integer
* slug: string
* url: string
* games: integer
* platforms: integer
* companies: integer
* _score: float (Optional)
* error: Array of strings



## GameMode 

> /game_modes/

* id u64
* name: string
* created_at: date
* updated_at: date
* slug: string
* url: string
* games: integer
* _score: float (Optional)
* error: Array of strings



## Keyword 

> /keywords/

* id u64
* name: string
* created_at: date
* updated_at: date
* slug: string
* url: string
* games: integer
* _score: float (Optional)
* error: Array of strings



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



## Platform 

> /platforms/

* id u64
* name: string
* logo:
  * url: string
  * cloudinary_id: string
  * width: integer
  * height: integer
* slug: string
* url: string
* created_at: date
* updated_at: date
* shortcut: string
* website: string
* summary: string
* category: integer
* product_family: integer
* alternative_name: string
* generation: integer
* games: integer
* versions(array):
  * name: string
  * slug: string
  * url: string
  * summary: string
  * manufacturer: integer
  * os: string
  * cpu: string
  * storage: string
  * memory: string
  * graphics: string
  * sound: string
  * online: string
  * media: string
  * connectivity: string
  * resolutions: string
  * output: string
  * release_dates(array):
    * date: date
    * region: integer
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



## Genre 

> /genres/

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

