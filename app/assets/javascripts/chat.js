$(function() {
  $("#message").keypress(function(e) {
    if (e.keyCode === 13) {
      e.preventDefault();
      var message = $(this).val();
      $("#chat-placeholder .s12").append("<div class='chat-message'>" + message + "</div>");
      $(this).val("");
    }
  })
})
