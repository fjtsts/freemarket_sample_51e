$(document).on('turbolinks:load',function(){
  $('#category_children').css("display" , "none");
  $('#category_grandchildren').css("display" , "none");
  $("#category_parent").change(function(){
    var parent_id = $("#select_parent").val() - 1;
    var parent_category = "@parents["+parent_id+"]";
    if (parent_id == "-1") {
      $('#category_children').css("display" , "none");
      $('#category_grandchildren').css("display" , "none");
    } else {
    console.log(parent_id);
      
      $('#category_children').css("display" , "");
    };
  });

  $("#category_children").change(function(){
    var children_id = $("#select_children").val();
    console.log(children_id);
    // var parent_category = "@parents["+parent_id+"]";
    if (children_id == "") {
      $('#category_grandchildren').css("display" , "none");
    } else {
    console.log(children_id);
      
      $('#category_grandchildren').css("display" , "");
    };
  });
});

// $.ajax({
//         type:    'GET',
//         url:     'items/category',
//         data:    { parent_id: parent_id },
//         dataType: 'json'
         
//       })