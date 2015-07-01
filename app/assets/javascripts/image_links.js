function makeBig() {
  $(this).removeClass('thumbnail');
  $(this).addClass('large-image');
}

function makeSmall() {
  $(this).addClass('thumbnail');
  $(this).removeClass('large-image');
}

$(document).ready(function() {
  $(document).on('mouseenter', '.image-link-image',  makeBig);
  $(document).on('mouseleave', '.image-link-image',  makeSmall);
});

