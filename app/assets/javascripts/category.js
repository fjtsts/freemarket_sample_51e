$(document).on('turbolinks:load',function(){

  $('#category_children').css("display" , "none");
  $('#category_grandchildren').css("display" , "none");
  $('#form-wrap-size').css("display" , "none");
  $('#form-wrap-brand').css("display" , "none");

  // parent
  $("#category_parent").change(function(){
    var parent_id = $("#select_parent").val() - 1;
    var parent_category = "@parents["+parent_id+"]";
    if (parent_id == "-1") {
      $('#category_children').css("display" , "none");
      $('#category_grandchildren').css("display" , "none");
    } else {
      
      $('#category_children').css("display" , "");
    };
  });

  // children
  $("#category_children").change(function(){
    var children_id = $("#select_children").val();
    // var parent_category = "@parents["+parent_id+"]";
    if (children_id == "") {
      $('#category_grandchildren').css("display" , "none");
    } else {
      
      $('#category_grandchildren').css("display" , "");
    };
  });

  $("#category_grandchildren").change(function(){
    var grandchildren_id = $("#select_grandchildren").val();
    console.log(grandchildren_id);
    if (grandchildren_id == "") {
      $('#form-wrap-size').css("display" , "none");
      $('#form-wrap-brand').css("display" , "none");
    } else {
      $('#form-wrap-size').css("display" , "");
      $('#form-wrap-brand').css("display" , "");
    };
  });
});

// $.ajax({
//         type:    'GET',
//         url:     'items/category',
//         data:    { parent_id: parent_id },
//         dataType: 'json'
         
//       })