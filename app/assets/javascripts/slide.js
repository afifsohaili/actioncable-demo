$(function () {
  $("#next").click(function(e) {
    e.preventDefault();

    var deckId = $(this).data("deck-id"),
        slideId = parseInt($("#slide-id").val());

    App.slide.next(deckId, slideId);
  });

  $("#prev").click(function(e) {
    e.preventDefault();

    var deckId = $(this).data("deck-id"),
        slideId = parseInt($("#slide-id").val());

    App.slide.prev(deckId, slideId);
  });
});
