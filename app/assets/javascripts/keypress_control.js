$(function () {
  $("body").on("keypress", function(e) {
    if (e.keyCode === 97) { $("#prev").trigger("click") }
    else if (e.keyCode === 108) { $("#next").trigger("click") }
  });
});
