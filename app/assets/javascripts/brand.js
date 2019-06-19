$(function() {
  $(document).on('turbolinks:load', 
  function(){
    $("#brand0").addClass(presence);
    $('.parent-link').click(function(){
      if($("#brand0").hasClass(presence)){
       
        $(".category-container__list-box").removeClass(presence);

      }else{
        $(".category-container__list-box").addClass(presence);
      }

    })
});
});