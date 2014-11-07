Respond = require '../index.coffee'

exports.SayOneThing =

  'test says one phrase': (test) ->
    respond = new Respond()
    respond.say 'hello my friend'
    result = console.log 'ok'

    test.equal(result)
    test.done()

