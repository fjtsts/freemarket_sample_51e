$(function (){
  
    $(document).on('turbolinks:load', function() {
      $(".brand-container__list-box").hide().eq(0).show();
    $('.parent-link1').click(function(e){
      e.preventDefault();

      var index = $('.parent-link1').index(this);
      $(".brand-container__list-box").eq(index).show().siblings(".brand-container__list-box").hide();
    })
  });
  });
