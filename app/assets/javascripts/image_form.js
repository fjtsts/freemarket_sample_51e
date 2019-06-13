$(document).on('turbolinks:load', function(){
  $(function(){
    $('form').on('change', 'input[type="file"]', function(e) {
      var form_upload = $('#form_upload')
      var file = e.target.files[0],
          reader = new FileReader();
      reader.onload = (function(e) {
        var image_preview = $(`<div class= "item-preview-field"><img>
                                <div class="button-area">
                                  <a class= "button-area--edit">編集</a>
                                  <a class= "button-area--delete">削除</a>
                                </div>
                              </div>`);
        image_preview.find('img').attr({
                                  src: e.target.result,
                                  title: file.name,
                                  class:"item_image" });
        $('.items-preview-field').append(image_preview)
        var image_length = $('img.item_image').length
        image_preview.find('.button-area--delete').addClass('delete'+ image_length);

        if (image_length == 0 ) {
          $('.items-preview-field').hide();
        } else if (image_length > 0 && image_length < 5) {
          $('#input_image').removeClass()
                            .addClass('upload'+ image_length)
                            .prop("required",false)
                            .clone(true)
                            .val('')
                            .removeClass()
                            .prependTo(form_upload);
          $('#input_image').nextAll()
                            .hide();
          $('.form_upload__text').show()
                                  .css("bottom", "100px");
          if(image_length == 3){
            $('.form_upload__text').css("bottom", "110px");
          }else if(image_length == 4){
            $('.form_upload__text').css("bottom", "130px");
          }
        } else if (image_length == 5){
          $('#input_image').removeClass()
                            .addClass('upload'+ image_length)
                            .prop("required",false)
                            .clone(true)
                            .val('')
                            .removeClass()
                            .prependTo(form_upload);
          $('#input_image').nextAll()
                            .hide();
          $(form_upload).hide();
        }
      });
      
      reader.readAsDataURL(file);
    });

// 画像の削除

    $('form').on('click','.button-area--delete' ,function(){
      target_image = $(this).parent().parent().remove();
      var item_length = $('.item-preview-field').length;
      if (item_length==0) {
        $('#input_image').prop('required',true);
      }else if(item_length==4){
        $(form_upload).show();
        $('.form_upload__text').show().css("bottom", "130px");
      }else if(item_length==3){
        $('.form_upload__text').show().css("bottom", "110px");
      }else if(item_length==2){
        $('.form_upload__text').show().css("bottom", "100px");
      }
    })

    $(document).on('click','.delete1' ,function(){
      $('input.upload1').remove();
    })
    $(document).on('click','.delete2' ,function(){
      $('input.upload2').remove();
    })
    $(document).on('click','.delete3' ,function(){
      $('input.upload3').remove();
    })
    $(document).on('click','.delete4' ,function(){
      $('input.upload4').remove();
    })
    $(document).on('click','.delete5' ,function(){
      $('input.upload5').remove();
    })

  })
});