extractValues = require 'extract-values'
http = require 'http'
###request = require 'request'###
fs = require 'fs-extra'
path = require 'path'
ja = require 'justaudio'
###
argv = require('minimist')(process.argv.slice(2))

console.dir(argv)

NewPhrase = "#{argv(1)}"
console.log NewPhrase
###


Say = (NewPhrase...)  ->
  request = require 'request'
  text = NewPhrase
  console.log text
  request.post {
    headers: {'Content-Type' : 'application/x-www-form-urlencoded\r\n'},
    url:     'http://www.acapela-group.com/demo-tts/DemoHTML5Form_V2.php'
    form: "MyLanguages=soni8&MySelectedVoice=Graham&MyTextForTTS=#{text}&SendToVaaS="
  },
    (error, body, response) ->


      baz = extractValues response.toString(), "myPhpVar = '{fileSource}'"
      console.log baz

      console.log baz.fileSource
      ja.playUrl baz.fileSource

      if error then console.log err



module.exports = Say
