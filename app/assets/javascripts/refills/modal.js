$(function() {
  $(".modal-state").on("change", function() {
    if ($(this).is(":checked")) {
      $("body").addClass("modal-open");
    } else {
      $("body").removeClass("modal-open");
    }
  });

  $(".modal-window").on("click", function(e) {
    e.stopPropagation();
  });
});
