window.onload = init;

  function init(){
    var headerElement = document.getElementById("header");

    if (headerElement == null) {
      console.log("Abhi you fucking suck");
    }
    var headroom = new Headroom(headerElement, {
      "tolerance": 5,
      "offset": 205,
    });
    headroom.init();

    headroom.destroy();
  };
