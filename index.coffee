extractValues = require 'extract-values'
ja = require 'justaudio'





Say = (NewPhrase...)  ->

  request =  require 'superagent'

  text = NewPhrase

  console.log text

  request
    .post 'http://www.acapela-group.com/demo-tts/DemoHTML5Form_V2.php'
    .set 'Content-Type','application/x-www-form-urlencoded'
    .send 'MyLanguages=sonid8'
    .send 'MySelectedVoice=Graham'
    .send "MyTextForTTS=#{text}"
    .send 'SendToVaaS='
    .end (res) ->
        if (res.ok)
          fileLink = extractValues res.text, "myPhpVar = '{fileSource}';"

          ja.playUrl fileLink.fileSource
          return console.log 'ok'



        else
          console.log 'Oh no! error ' + res.text





module.exports = Say
