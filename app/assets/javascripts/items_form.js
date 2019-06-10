function separate(num){
  return String(num).replace( /(\d)(?=(\d\d\d)+(?!\d))/g, '$1,');
}
$(document).on('turbolinks:load', function() {
  $(".sell-form__main__prace__num__input").keyup(function(){
    var input = $(this).val();
    var fee = Math.floor(input * 0.1);
    var profit = input - fee;
    if (input >= 300 && input < 10000000){
      $(".sell-form__main__prace__fee--right").html("¥"+separate(fee));
      $(".sell-form__main__prace__profit--right").html("¥"+separate(profit));
    } else {
      $(".sell-form__main__prace__fee--right").html("-");
      $(".sell-form__main__prace__profit--right").html("-");
    }
  });
  // 発送の方法
  $('#how_to_shipping').css("display" , "none");
  $('#exhibitor_burden').css("display" , "none");
  $('#purchaser_burden').css("display" , "none");
  $("#shipping_fee").change(function(){
    var how_to_shipping = $("#select_shipping_fee").val();
    console.log(how_to_shipping)
    if (how_to_shipping == "送料込み(出品者負担)") {
      $('#how_to_shipping').css("display" , "");
      $('#exhibitor_burden').css("display" , "");
      $('#purchaser_burden').css("display" , "none");
    } else if (how_to_shipping == "着払い(購入者負担)"){
      $('#how_to_shipping').css("display" , "");
      $('#exhibitor_burden').css("display" , "none");
      $('#purchaser_burden').css("display" , "");
    } else {
      $('#how_to_shipping').css("display" , "none");
      $('#exhibitor_burden').css("display" , "none");
      $('#purchaser_burden').css("display" , "none");
    };
  });


});
