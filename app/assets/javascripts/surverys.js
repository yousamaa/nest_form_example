$(document).on("turbolinks:load", function () {
  $("form").on("click", ".remove_fields", function (event) {
    $(this).closest("fieldset").remove();
    return event.preventDefault();
  });

  $("form").on("click", ".add_fields", function (event) {
    time = new Date().getTime();
    regexp = new RegExp($(this).data("id"), "g");
    $(this).before($(this).data("fields").replace(regexp, time));
    return event.preventDefault();
  });

  // $("form").on("click", ".remove_fields", function (event) {
  //   var objectId = $(this).data("object-id");
  //   if (objectId) {
  //     $.ajax({
  //       url: "/answers/" + objectId,
  //       type: "DELETE",
  //       success: function (response) {
  //         if (response.success) {
  //           return event.preventDefault();
  //         }
  //       },
  //     });
  //   }
  // });
});
