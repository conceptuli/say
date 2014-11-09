james = require '../index.coffee'

exports.SayOneThing =

  'test says one phrase': (test) ->
    phrase = 'hello my friend'
    james.phraseLink phrase
    result = console.log phraseLink
    test.equal(result)
    test.done()

