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
})