LinterProtoProvider = require './linter-proto'

module.exports =
  activate: ->
    console.log 'activate linter-protocol-buffer'

  provideLinter: -> LinterProtoProvider
