$(function() {
  $('.slider').slick({
  accessibility: false,
  adaptiveHeight: true,
  arrows: false,
  dots: true,
  customPaging: function(slick, index){
    var num = slick.$slides.eq(index).html();
    return '<b>' + num + '</b>';
  },
  });
});

// $(function(){
//   $(".photosub").on('mouseover',function(){
//     var dataUrl = $(this).attr('data-url');
//     $("#photoMain").attr('src',dataUrl);
//   });
// });