extractValues = require 'extract-values'
ja = require 'justaudio'
request =  require 'superagent'



class Respond
  constructor: (@phrase) ->

  say: (@phrase) ->
    text = @phrase
    request
      .post 'http://www.acapela-group.com/demo-tts/DemoHTML5Form_V2.php'
      .set 'Content-Type','application/x-www-form-urlencoded'
      .send 'MyLanguages=sonid8'
      .send 'MySelectedVoice=Graham'
      .send "MyTextForTTS=#{text}"
      .send 'SendToVaaS='
      .end (res) ->
        if res.ok then fileLink = extractValues res.text, "myPhpVar = '{fileSource}';", ->
          console.log 'ok'
        else console.log 'Oh no! error ' + res.text

        ja.playUrl fileLink.fileSource


    return console.log 'ok'


module.exports  = Respond





