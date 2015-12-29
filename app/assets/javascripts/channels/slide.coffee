App.slide = App.cable.subscriptions.create "SlideChannel",
  connected: ->
    # Called when the subscription is ready for use on the server

  disconnected: ->
    # Called when the subscription has been terminated by the server

  received: (data) ->
    $("#slide-id").val(data.position)
    $("#slide-title").text(data.title)
    $("#slide-body").text(data.body)

  prev: (deckId, slidePosition) ->
    @perform "prev", deckId: deckId, slidePosition: slidePosition

  next: (deckId, slidePosition) ->
    @perform "next", deckId: deckId, slidePosition: slidePosition
