App.slide = App.cable.subscriptions.create "SlideChannel",
  connected: ->
    # Called when the subscription is ready for use on the server

  disconnected: ->
    # Called when the subscription has been terminated by the server

  received: (data) ->
    # Called when there"s incoming data on the websocket for this channel

  prev: ->
    @perform "prev"

  next: ->
    @perform "next"