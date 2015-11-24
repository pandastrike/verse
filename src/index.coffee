{resolve} = require "path"

module.exports = ->
  (stylus) -> stylus.include resolve __dirname
