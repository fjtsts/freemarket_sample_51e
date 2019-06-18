$(document).on('turbolinks:load',function(){
  var firstSelecthtml = `<option value="---">---</option>`;
  function foamHtml(category) {
    var html = `<option value="${category.id}">${category.name}</option>`;
    return html;
  }

  $('#category_children').css("display" , "none");
  $('#category_grandchildren').css("display" , "none");
  $('#form-wrap-size').css("display" , "none");
  $('#form-wrap-brand').css("display" , "none");

  // parent->children
  $("#category_parent").change(function(){
    var parent_id = $("#select_parent").val();
    if (parent_id == "" || parent_id == "---") {
      $('#category_children').css("display" , "none");
      $('#category_grandchildren').css("display" , "none");
    } else {
      $.ajax({
        type:    'GET',
        url:     '/items/select_category',
        data:    { parent_id: parent_id },
        dataType: 'json'
      })
      .done(function(child_ids){
        $('#select_children').empty();
        $('#select_children').parent().css("display", "");
        $("#select_children").append(firstSelecthtml);
        child_ids.forEach(function(child) {
          var html = foamHtml(child);
          $("#select_children").append(html);
        });
        $('#category_children').css("display" , "");
      })
    };
  });

  // children->grandchildren
  $("#category_children").change(function(){
    var children_id = $("#select_children").val();
    if (children_id == "---") {
      $('#category_grandchildren').css("display" , "none");
    } else {
      $.ajax({
        type:    'GET',
        url:     '/items/select_category',
        data:    { parent_id: children_id },
        dataType: 'json'
      })
      .done(function(child_ids){
        $('#select_grandchildren').empty();
        $('#select_grandchildren').parent().css("display", "");
        $("#select_grandchildren").append(firstSelecthtml);
        child_ids.forEach(function(child) {
          var html = foamHtml(child);
          $("#select_grandchildren").append(html);
        });
        $('#category_grandchildren').css("display" , "");
      })
    };
  });
// size.brand
  $("#category_children").change(function(){
    var children_id = $("#select_grandchildren").val();
    if (children_id == "---") {
      $('#form-wrap-size').css("display" , "none");
      $('#form-wrap-brand').css("display" , "none");
    } else {
      $('#form-wrap-size').css("display" , "");
      $('#form-wrap-brand').css("display" , "");
    };
  });
});

