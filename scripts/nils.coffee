# Description:
#   Says what nils would have said.
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   du bisch ... - Nei du!
#
# Author:
#   nils

module.exports = (robot) ->

  regex = /du\s+bisch\s([^\.\!]+)/i

  robot.hear regex, (msg) ->
    description = msg.match[1]
    user        = msg.message.user.name
    msg.send "#{user}: Nei du bisch #{description}!"
