extractValues = require 'extract-values'

When  = require 'when'

fs = require 'fs-extra'

path = require 'path'

Q = require 'q'

request = require 'superagent'

getLink = (phrase, err, resLink) ->


class Create
  makePhrase: (phrase, phraseLink) ->
    console.log phrase
    phraseLink = getLink(phrase)
    JSON.stringify(phraseLink.fileSource)



module.exports = Create


