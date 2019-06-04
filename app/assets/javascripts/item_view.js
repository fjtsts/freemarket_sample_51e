
$(function(){
  $(".photosub").on('mouseover',function(){
    var dataUrl = $(this).attr('data-url');
    $("#photoMain").attr('src',dataUrl);
  });
});

// $(function(){
//   $(".thumbnail").on('mouseover',function(){
//     var dataUrl = $(this).attr('data-url');
//     $("#main-image").attr('src',dataUrl);
//   });
// });