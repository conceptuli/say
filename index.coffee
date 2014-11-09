extractValues = require 'extract-values'

When  = require 'when'

fs = require 'fs-extra'

path = require 'path'

Q = require 'q'

request = require 'superagent'





makeLink = phrase (phraseLink) ->
  if phrase is null then console.log 'we need phrase'
  else
  getPhraseLink phrase





getPhraseLink = (err, phrase, phraseLink) ->
  request
  .post 'http://www.acapela-group.com/demo-tts/DemoHTML5Form_V2.php'
  .set 'Content-Type', 'application/x-www-form-urlencoded'
  .send 'MyLanguages=sonid8'
  .send 'MySelectedVoice=Graham'
  .send 'MyTextForTTS=' + "#{phrase}".split(" ").join("+")
  .send 'SendToVaaS='
  .end (res) ->
    if err then console.error err
    else
    resText = res.text
    foobar = extractValues resText, "myPhpVar = '{fileSource}';"

    resLink = foobar

    phraseLink = resLink
    console.log phraseLink
  if err then throw console.error err
  else
  phraseLink


exports.makeLink = makeLink

