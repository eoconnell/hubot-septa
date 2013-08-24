# Description
#   Allows Hubot to give you real-time schedule information for trips on 
#   SEPTA's regional rail system.
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   hubot septa me the next train from <source> to <destination>
#   hubot septa me the next <integer> trains from <source> to <destination>
#
# Notes:
#   Station names must match SEPTA's standard. The list of valid station can be 
#   found here - http://opendataphilly.org/opendata/resource/171/septa-next-to-arrive/
#
# Todo:
#   handle transfers
#
# Author:
#   eoconnell <oconn.e@gmail.com>


module.exports = (robot) ->
  robot.respond /septa me the next train from (.*) to (.*)/i, (msg) ->
    next_to_arrive msg, escape(msg.match[1]), escape(msg.match[2])
  robot.respond /septa me the next ([1-9][0-9]*) trains from (.*) to (.*)/i, (msg) ->
    next_to_arrive msg, escape(msg.match[2]), escape(msg.match[3]), msg.match[1]


next_to_arrive = (msg, source, destination, limit = 1) ->
  limit = 5 if limit > 5
  url = "http://www3.septa.org/hackathon/NextToArrive"
  msg.http("#{url}/#{source}/#{destination}/#{limit}")
    .get() (err, res, body) ->
      json = JSON.parse body

      if !json.length
        msg.reply "Couldn't find any trains for that route."

      for train in json
        msg.reply "SEPTA train #{train.orig_train} leaves at #{train.orig_departure_time} and arrives at #{train.orig_arrival_time} (#{train.orig_delay})."
