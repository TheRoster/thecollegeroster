(function() {
  $(".header").headroom({
    "tolerance": 2,
    "offset": 200,
    "classes": {
      "initial": "animated",
      "pinned": "slideDown",
      "unpinned": "slideUp",
      "top": "headroom--top",
      "notTop": "headroom--not-top"
    }
  });
  // to destroy
  $(".header").headroom("destroy");
});
