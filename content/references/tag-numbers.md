---
title: "Tag Numbers"






---

Tag numbers are automatically generated numbers which provide a compact and fast way to do complex filtering on the IGDB API. The number calculation can be easily achieved with any programming language.

The basis of the calculation is a 32bit integer, where the first 4 bits contain the object type ID, and the remaining 28 bits represent the ID of the object we are generating the tag number for.

Using this method a flat index of custom object 'hashes' can be maintained in which index the search and filtering is faster than using conventional methods.

Currently the following object types use tags:

| Type ID | Name |
|---------|:----:|
| 0       | Theme |
| 1       | Genre |
| 2       | Keyword |
| 3       | Game |
| 4       | Player Perspective |

Let's see two examples for tag number calculation.

**Example 1**

We try to find all the pulses which relate to the Shooter genre. The tag number generation in Javascript would look something like this:

```
// Javascript
const genreTypeID = 1 // The type ID from the table above
const shooterGenreID = 5 // The Shooter genre's ID, coming from the genres endpoint.
let tagNumber = genreTypeID << 28 // Bit-shifting the genre's type ID by 28 bits, ensuring that it will get into the first four bits. The result will be 268435456
tagNumber |= shooterGenreID // Adding the Shooter genre ID to the tag number with a bitwise OR operation. The result will be 268435461.
```

An example query:
```
/pulse/?filter[tags][any]=268435461
```

**Example 2**

```python
#Python
gameTypeID: 3 # The game's type ID from the table above/
gameID: 26196 # The ID of the game /games/crash-bandicoot-n-sane-trilogy
tagNumber: gameTypeID << 28 # Bit-shifting the game's type ID by 28 bits, ensuring that it will get into the first four bits. The result will be 805306368
tagNumber |= gameID # Adding the game ID to the tag number with a bitwise OR operation. The result will be 805332564.
```

An example query:
```
/pulse/?filter[tags][any]=805332564
```
