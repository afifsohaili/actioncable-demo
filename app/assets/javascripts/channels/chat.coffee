$ ->
  $("#message").keypress (e) ->
    e.stopPropagation()
    if e.keyCode == 13
      e.preventDefault()
      message = $(this).val()
      App.chat.speak(message: message)
      $(this).val ''

App.chat = App.cable.subscriptions.create "ChatChannel",
  connected: ->
    # Called when the subscription is ready for use on the server

  disconnected: ->
    # Called when the subscription has been terminated by the server

  received: (data) ->
    $("#chat-placeholder").append(data.partial)

  speak: (message) ->
    @perform 'speak', message
