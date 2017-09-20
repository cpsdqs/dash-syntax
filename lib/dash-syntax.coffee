module.exports =
  activate: (state) ->
    @updateSettings()

    atom.config.onDidChange 'dash-syntax.cursorAnimated', =>
      @updateSettings()

  clearSettings: ->
    document.documentElement.classList.remove 'dash-cursor-animated'

  updateSettings: ->
    @clearSettings()

    cursorAnimated = atom.config.get 'dash-syntax.cursorAnimated'

    if cursorAnimated
      document.documentElement.classList.add 'dash-cursor-animated'

  deactivate: ->
    @clearSettings()
