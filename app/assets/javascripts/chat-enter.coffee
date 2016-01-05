$ ->
  $("#message").keypress (e) ->
    e.stopPropagation()
    if e.keyCode == 13
      e.preventDefault()
      message = $(this).val()
      $('#chat-placeholder .s12').
        append "<div class=\"chat-message\">#{message}</div>"
      $(this).val ''
