+++
toc = true
next = "/references/ordering"
prev = "/references/fields"
weight = 2
title = "Filters"
date = "2017-01-09T10:23:47+01:00"

+++

## What?

Filters are used to sift through results to get what you want. You can exclude and include results based on their properties. For example you could remove all Games where the `rating` was below 80 (`filter[rating][gte]=80`).

## How?

Filters are parameter arrays so must be added using special keys like this: `/games/?search=zelda&filter[rating][gte]=80&filter[release_dates.date][gt]=YYYY-MM-DD`
The filter itself comprises of 2 parts; The `field` and the `postfix`. Fields are described in the section on the left, postfixes are described below.

## Where?

Filters can be used on any entity that has sub-properties such as Games, Companies, People etc.

## Available Postfixes

- `eq` Equal: Exact match equal.
- `not_eq` Not Equal: Exact match equal.
- `gt` Greater than works only on numbers.
- `gte` Greater than or equal to works only on numbers.
- `lt` Less than works only on numbers.
- `lte` Less than or equal to works only on numbers.
- `prefix` Prefix of a value only works on strings.
- `exists` The value is not null.
- `not_exists` The value is null.
- `in` The value exists within the (comma separated) array (AND between values).
- `not_in` The values must not exists within the (comma separated) array (AND between values).
- `any` The value has any within the (comma separated) array (OR between values).

## Text search

- `search` This parameter is not like other filters. It is an independant parameter that performs a full text search.

{{% notice warning %}}
Setting the `order` parameter will override the default `relevance` ordering of search results.
{{% /notice %}}

`/games/?search=zelda`

## Examples

#### Filter by multiple platforms
----------

If you checkout the platforms endpoint:
`/platforms/?fields=name&limit=50`  
You will find the names and id's of the platform. Select the ones you want.  
Then when you know the ID's of the platform:

`/games/?fields=*&filter[release_dates.platform][eq]=48&filter[release_dates.platform][eq]=6&filter[release_dates.platform][eq]=49&`

This will give you games that are released on PS4 or XBOX ONE or PC
