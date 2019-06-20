$(function (){
    $('.category-container__list-box').hide().eq(0).show();
    $('.parent-link').click(function(){
      var index = $('.parent-link').index(this);
      debugger
      $('.category-container__list-box').eq(index).show();
      
    });
  });
