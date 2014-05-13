{ScrollView} = require 'atom'

module.exports =
class OutputView extends ScrollView
  @content: ->
    @div class: 'apm-publish info-view', =>
      @pre class: 'output'

  initialize: ->
    super
    atom.workspaceView.appendToBottom(this)

  addLine: (line) ->
    @find(".output").append(line)

  finish: ->
    setTimeout =>
      @detach()
    , 10000
