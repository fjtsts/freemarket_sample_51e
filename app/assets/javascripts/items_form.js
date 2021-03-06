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
  var firstSelecthtml = `<option value="">---</option>`;
  var selection = $('#how_to_shipping');
  $("#how_to_ship").css("display","none");
  $('#select_shipping_fee').change(function() {
    var fee_payer = $('#select_shipping_fee').val();
    $(selection).append(firstSelecthtml);
    if (fee_payer == "") {
      $("#how_to_ship").css("display","none");
    } else if (fee_payer == "送料込み(出品者負担)") {
      $("#how_to_ship").css("display", "");
      $(selection).empty();
      $(selection).append(firstSelecthtml);
      $(selection).append(
      ' <option value=未定>未定</option>\
        <option value=らくらくメルカリ便>らくらくメルカリ便</option>\
        <option value=ゆうメール>ゆうメール</option>\
        <option value=レターパック>レターパック</option>\
        <option value=普通郵便(定形、定形外)>普通郵便(定形、定形外)</option>\
        <option value=クロネコヤマト>クロネコヤマト</option>\
        <option value=ゆうパック>ゆうパック</option>\
        <option value=クリックポスト>クリックポスト</option>\
        <option value=ゆうパケット>ゆうパケット</option>'
      );
    } else if (fee_payer == "着払い(購入者負担)") {
      $("#how_to_ship").css("display", "");
      $(selection).empty();
      $(selection).append(firstSelecthtml);
      $(selection).append(
      ' <option value=未定>未定</option>\
        <option value=クロネコヤマト>クロネコヤマト</option>\
        <option value=ゆうパック>ゆうパック</option>\
        <option value=ゆうメール>ゆうメール</option>'
      );
    }
  });
});
