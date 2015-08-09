# linter-protocol-buffer package

A very basic protobuf "linter" that just tries to compile the file and shows the first error.  But
it's better than nothing ;)

Uses [Protobuf.js](https://github.com/dcodeIO/ProtoBuf.js/) internally, so any bugs about the
compiler belong there.  And since that library (almost) never shows line numbers, there's not much I
can do about that either.  If anyone knows of a proper protobuf linter, let me know and I'll switch
over to it (protoc doesn't do better any for linting with the exception of including the google/*
protos)

## Installation
Linter package must be installed in order to use this plugin. If Linter is not installed, please
follow the instructions [here](https://github.com/AtomLinter/Linter).

### Plugin installation
```
$ apm install linter-protocol-buffer
```

## Settings

None at the moment :/  I can add things like build and optional external command to use if anyone
requests it :)  But given that protobuf usage isn't that wide-spread it's not a priority for me at
the moment.
