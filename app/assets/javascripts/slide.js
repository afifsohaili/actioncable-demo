$(function () {
  $("#next").click(function(e) {
    e.preventDefault();

    var deckId = $(this).data("deck-id");

    App.slide.next(deckId, 0);
  });
});
