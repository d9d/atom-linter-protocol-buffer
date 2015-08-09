pbjs = require('protobufjs')

LinterProto =
  grammarScopes : ['source.proto', 'source.protobuf']
  scope         : 'file'
  lintOnFly     : true

  lint: (textEditor) ->
    return new Promise (resolve, reject) ->
      try
        pbjs.loadProto(textEditor.getText(), null, textEditor.getPath())
        resolve([])
      catch err
        lineNum = /\sat line (\d+):/.exec(err.message)

        message =
          type     : 'Error'
          text     : err.message
          filePath : textEditor.getPath()
          range    : if lineNum then [
                [lineNum[1] - 1, -1]
              , [lineNum[1] - 1, -1]
            ] else []

        resolve([message])

  config: (key) ->
    atom.config.get "linter-protocol-buffer.#{key}"

module.exports = LinterProto
