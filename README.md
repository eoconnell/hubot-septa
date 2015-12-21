hubot-septa
===========

[![Build Status](https://api.travis-ci.org/eoconnell/hubot-septa.svg?branch=master)](https://travis-ci.org/eoconnell/hubot-septa)

Allows [Hubot](http://github.com/github/hubot) to give you real-time information on SEPTA's
transportation systems.

Installation
------------

Add hubot-septa as a depencency in your Hubot package.json file:

```
"hubot-septa": "0.1.0"
```

Then add `"hubot-septa"` to your external-scripts.json file.

If you don't have an external-scripts.json file, create a new file in your Hubot base dir that
contains `["hubot-septa"]`.

see https://github.com/github/hubot/blob/master/docs/scripting.md


Usage
-----

Using SEPTA's Next to Arrive API:

`hubot septa me the next train from <source> to <destination>`

`hubot septa me the next <integer> trains from <source> to <destination>`


### Example

```bash
Hubot> hubot septa me the next train from Wissahickon to Suburban Station
Hubot> Shell: SEPTA train 6233 leaves at  9:00PM and arrives at  9:25PM (1 mins).

Hubot> hubot septa me the next 3 trains from 30th Street Station to Manayunk
Hubot> Shell: SEPTA train 230 leaves at  9:26PM and arrives at  9:51PM (On time).
Hubot> Shell: SEPTA train 232 leaves at 10:16PM and arrives at 10:41PM (On time).
Hubot> Shell: SEPTA train 8234 leaves at 11:20PM and arrives at 11:45PM (On time).
```

TODO
----

* Handle line transfers


License
-------

[MIT](https://github.com/eoconnell/hubot-septa/blob/master/LICENSE.md)
