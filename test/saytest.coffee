Say = require '../index.coffee'

exports.SayOneThing =

  'test says one phrase': (test) ->
    Say 'hello friend'
    result = console.log 'ok'
    test.equal(result)
    test.done()

  'test says two phrases': (test) ->
    Say 'hello friend', NewPhrase
    NewPhrase = Say 'ahoy mate'
    result = console.log 'ok'
    test.equal(result)
    test.done()