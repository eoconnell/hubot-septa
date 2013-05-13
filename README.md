hubot-septa
===========

Allows [Hubot](http://github.com/github/hubot) to give you real-time schedule information for trips on SEPTA's regional rail system.

Install
-------

see https://github.com/github/hubot#external-scripts


Usage
--------

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
