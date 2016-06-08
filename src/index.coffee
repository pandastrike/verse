{resolve, join} = require "path"

module.exports = ->
  (stylus) -> stylus.include resolve join(__dirname, "..")
