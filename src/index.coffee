{resolve} = require "path"

module.exports = ->
  (stylus) ->
    stylus.import resolve __dirname, "..", "css"
