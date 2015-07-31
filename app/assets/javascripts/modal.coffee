$ ->
  $('.js-show-image').click ->
    $('.js-preview-image').attr('src', $(this).attr('data-src'))
    $('#show_img').modal('show')
