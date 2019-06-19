

  $(document).on('turbolinks:load', function(){
  var mySwiper = new Swiper('.swiper-container',{
    mode: 'horizontal',
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
  });
  })

