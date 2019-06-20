$(function (){
  var url   = location.href;
  
    
    if(url == "http://localhost:3000/" || url =="http://3.113.56.233/"){
      var swiper;
      $(document).on('turbolinks:load', function() {
        swiper = new Swiper('.swiper-container',{
        // この中にオプションを記述する。
        mode: 'horizontal',
        queueStartCallbacks: true,
        autoHeight: true,
        loop: true,
        autoplay: {
          delay: 3000,
          disableOnInteraction: false,
          reverseDirection: false
        },
        navigation: {
          nextEl: '.swiper-button-next',
          prevEl: '.swiper-button-prev'
        },
        pagination: {
          el: '.swiper-pagination',
          type: 'bullets',
          clickable: true
          
        }
      })
      })
    };
});
