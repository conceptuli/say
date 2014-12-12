extractValues = require 'extract-values'
path = require 'path'
request = require 'request'




class Say
  constructor: (@phrase) ->
    @link = ''
    @formData =
      MyLanguages: 'sonid9'
      MySelectedVoice: 'Graham'
      MyTextForTTS: "#{@phrase}"
      SendToVaaS: ''

    @options =
      headers:
        ' content-type': 'Content-type: application/x-www-form-urlencoded\r\n'



    do getLink = (@options, @formData, @bodyLink) ->
      request.post
        url: 'http://www.acapela-group.com/demo-tts/DemoHTML5Form_V2.php'
        headers: @options.headers
        form: @formData
      , (error, response, body) ->
        body = extractValues JSON.stringify(response), "var myPhpVar = '{link}\';"
        @bodyLink = body.link


        @link = @bodyLink
        console.log link:@link




module.exports = Say


