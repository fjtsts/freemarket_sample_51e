
$(function(){
  $(document).on('turbolinks:load', function(){
    $(".photosub").on('mouseover',function(){
      var dataUrl = $(this).attr('data-url');
      $("#photoMain").attr('src',dataUrl);
    });
  });
});