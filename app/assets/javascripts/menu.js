var main = function() {
  /* Push the body and the nav over by 185px over */
  $('.icon-menu').click(function() {
    $('.menunav').animate({
      left: "0px"
    }, 200);

    $('body').animate({
      left: "185px"
    }, 200);
  });

  /* Then push them back */
  $('.icon-close').click(function() {
    $('.menunav').animate({
      left: "-185px"
    }, 200);

    $('body').animate({
      left: "0px"
    }, 200);
  });
};

$(document).ready(main);

