$(document).on('turbolinks:load',function(){
  var firstSelecthtml = `<option value="---">---</option>`;
  function foamHtml(category) {
    var html = `<option value="${category.id}">${category.name}</option>`;
    return html;
  }
  $("#category_parent--edit").change(function(){
    var parent_id = $("#select_parent--edit").val();
    if (parent_id == "" || parent_id == "---") {
      $('#category_children--edit').css("display" , "none");
      $('#category_grandchildren--edit').css("display" , "none");
      $('#form-wrap-size--edit').css("display" , "none");
      $('#form-wrap-brand--edit').css("display" , "none");
    } else {
      $.ajax({
        type:    'GET',
        url:     '/items/select_category',
        data:    { parent_id: parent_id },
        dataType: 'json'
      })
      .done(function(child_ids){
        $('#select_children--edit').empty();
        $('#select_children--edit').parent().css("display", "");
        $("#select_children--edit").append(firstSelecthtml);
        child_ids.forEach(function(child) {
          var html = foamHtml(child);
          $("#select_children--edit").append(html);
        });
        $('#category_children--edit').css("display" , "");
        $('#category_grandchildren--edit').css("display" , "none");
      })
    };
  });
  $("#category_children--edit").change(function(){
    var children_id = $("#select_children--edit").val();
    if (children_id == "" || children_id == "---") {
      $('#category_grandchildren--edit').css("display" , "none");
    } else {
      $.ajax({
        type:    'GET',
        url:     '/items/select_category',
        data:    { parent_id: children_id },
        dataType: 'json'
      })
      .done(function(child_ids){
        $('#select_grandchildren--edit').empty();
        $('#select_grandchildren--edit').parent().css("display", "");
        $("#select_grandchildren--edit").append(firstSelecthtml);
        child_ids.forEach(function(child) {
          var html = foamHtml(child);
          $("#select_grandchildren--edit").append(html);
        });
        $('#category_grandchildren--edit').css("display" , "");
      })
    };
  });
  $("#category_children--edit").change(function(){
    var children_id = $("#select_children--edit").val();
    if (children_id == "" || children_id == "---") {
      $('#form-wrap-size--edit').css("display" , "none");
      $('#form-wrap-brand--edit').css("display" , "none");
    } else {
      $('#form-wrap-size--edit').css("display" , "");
      $('#form-wrap-brand--edit').css("display" , "");
    };
  });
  var firstSelecthtml = `<option value="">---</option>`;
  var selection = $('#how_to_shipping--edit');
  $('#select_shipping_fee--edit').change(function() {
    var fee_payer = $('#select_shipping_fee--edit').val();
    $(selection).append(firstSelecthtml);
    if (fee_payer == "") {
      $("#how_to_ship--edit").css("display","none");
    } else if (fee_payer == "送料込み(出品者負担)") {
      $("#how_to_ship--edit").css("display", "");
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
      $("#how_to_ship--edit").css("display", "");
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
})