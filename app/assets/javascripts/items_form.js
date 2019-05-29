function separate(num){
  return String(num).replace( /(\d)(?=(\d\d\d)+(?!\d))/g, '$1,');
}

$(function(){
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
});



    

