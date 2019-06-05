$(function() {
  $(document).on('turbolinks:load', function() {
    $('#user_nickname').blur(function() {
      if($(this).val() == "") {
        if($('.nickname p').hasClass('wrong-message')) {
          return
        } else {
          $('.nickname').append('<p class="wrong-message nickname-message">ニックネームを入力してください</p>');
        }
      } else {
        $('.nickname-message').remove();
      }
    });
  
    $('#user_email').blur(function() {
      if($(this).val() == "" ||
      !$(this).val().match(/^([a-zA-Z0-9])+([a-zA-Z0-9\._-])*@([a-zA-Z0-9_-])+([a-zA-Z0-9\._-]+)+$/)
      ) {
        if($('.email p').hasClass('wrong-message')) {
          return
        } else {
          $('.email').append('<p class="wrong-message mail-message">メールアドレスを入力してください</p>');
        }
      } else {
        $('.mail-message').remove();
      }
    });
    
    $('#user_password').blur(function() {
      if($(this).val() == "" ||
        !$(this).val().match(/^[a-zA-Z0-9]+$/)||
        $(this).val().length < 6
      ) {
        if($('.password p').hasClass('wrong-message')) {
          return
        } else {
          $('.password').append('<p class="wrong-message password-message">パスワードを入力してください<br>パスワードは6文字以上128文字以下で入力してください</p>');
        }
      } else {
        $('.password-message').remove();
      }
    });
  
    $('#user_password_confirmation').blur(function() {
      if($(this).val() != $('#user_password').val()) {
        if($('.password_confirmation p').hasClass('wrong-message')) {
          return
        } else {
          $('.password_confirmation').append('<p class="wrong-message password_confirmation-message">パスワード (確認) を入力してください</p>');
        }
      } else {
        $('.password_confirmation-message').remove();
      }
    });
  
    $('#user_user_profile_attributes_last_name').blur(function() {
      if($(this).val() == "" ||
        !$(this).val().match(/^[^\x01-\x7E\xA1-\xDF]+$/)
      ) {
        if($('.last_name p').hasClass('wrong-message')) {
          return
        } else {
          $('.last_name').append('<p class="wrong-message last_name-message">姓 を入力してください</p>');
        }
      } else {
        $('.last_name-message').remove();
      }
    });
  
    $('#user_user_profile_attributes_first_name').blur(function() {
      if($(this).val() == "" ||
        !$(this).val().match(/^[^\x01-\x7E\xA1-\xDF]+$/)
      ) {
        if($('.first_name p').hasClass('wrong-message')) {
          return
        } else {
          $('.first_name').append('<p class="wrong-message first_name-message">名 を入力してください</p>');
        }
      } else {
        $('.first_name-message').remove();
      }
    });
  
    $('#user_user_profile_attributes_last_name_kata').blur(function() {
      if($(this).val() == "" ||
        !$(this).val().match(/^[\u30a1-\u30f6]+$/)
      ) {
        if($('.last_name_kata p').hasClass('wrong-message')) {
          return
        } else {
          $('.last_name_kata').append('<p class="wrong-message last_name_kata-message">姓カナ を入力してください</p>');
        }
      } else {
        $('.last_name_kata-message').remove();
      }
    });
  
    $('#user_user_profile_attributes_first_name_kata').blur(function() {
      if($(this).val() == "" ||
        !$(this).val().match(/^[\u30a1-\u30f6]+$/)
      ) {
        if($('.first_name_kata p').hasClass('wrong-message')) {
          return
        } else {
          $('.first_name_kata').append('<p class="wrong-message first_name_kata-message">姓カナ を入力してください</p>');
        }
      } else {
        $('.first_name_kata-message').remove();
      }
    });
  
    $('.next1').on('click', function() {
      $('.user-registration_form_title1').addClass("hide");
      $('.user-registration_form_title2').removeClass("hide");
      $('.user-registration_form_container1').addClass("hide");
      $('.user-registration_form_container2').removeClass("hide");
      $('#progress2').addClass("progress-red__text");
      $('#progress2-mark').addClass("progress-red__mark");
      $('#progress1-mark').addClass("change-red-back");
      $('#progress2-mark').addClass("change-red-front");
    });
  
    $('.next2').on('click', function() {
      // $('#user_user_profile_attributes_tel').val()
  
      if($('#user_user_profile_attributes_tel').val() == "" ||
        !$('#user_user_profile_attributes_tel').val().match(/^0\d{9,10}$/)
      ) {
        if($('.tel p').hasClass('wrong-message')) {
          return
        } else {
          $('.tel').append('<p class="wrong-message tel-message">電話番号の書式を確認してください</p>');
        }
        return;
      } else {
        $('.tel-message').remove();
        $('.user-registration_form_title2').addClass("hide");
        $('.user-registration_form_title3').removeClass("hide");
        $('.user-registration_form_container2').addClass("hide");
        $('.user-registration_form_container3').removeClass("hide");
        $('#progress3').addClass("progress-red__text");
        $('#progress3-mark').addClass("progress-red__mark");
        $('#progress2-mark').addClass("change-red-back");
        $('#progress3-mark').addClass("change-red-front");
      }
    });
  
    $('#user_address_attributes_last_name').blur(function() {
      if($(this).val() == "" ||
        !$(this).val().match(/^[^\x01-\x7E\xA1-\xDF]+$/)
      ) {
        if($('.address_last_name p').hasClass('wrong-message')) {
          return
        } else {
          $('.address_last_name').append('<p class="wrong-message address_last_name-message">姓 を入力してください</p>');
        }
      } else {
        $('.address_last_name-message').remove();
      }
    });
  
    $('#user_address_attributes_first_name').blur(function() {
      if($(this).val() == "" ||
        !$(this).val().match(/^[^\x01-\x7E\xA1-\xDF]+$/)
      ) {
        if($('.address_first_name p').hasClass('wrong-message')) {
          return
        } else {
          $('.address_first_name').append('<p class="wrong-message address_first_name-message">名 を入力してください</p>');
        }
      } else {
        $('.address_first_name-message').remove();
      }
    });
  
    $('#user_address_attributes_last_name_kata').blur(function() {
      if($(this).val() == "" ||
        !$(this).val().match(/^[\u30a1-\u30f6]+$/)
      ) {
        if($('.address_last_name_kata p').hasClass('wrong-message')) {
          return
        } else {
          $('.address_last_name_kata').append('<p class="wrong-message address_last_name_kata-message">姓カナ を入力してください</p>');
        }
      } else {
        $('.address_last_name_kata-message').remove();
      }
    });
  
    $('#user_address_attributes_first_name_kata').blur(function() {
      if($(this).val() == "" ||
        !$(this).val().match(/^[\u30a1-\u30f6]+$/)
      ) {
        if($('.address_first_name_kata p').hasClass('wrong-message')) {
          return
        } else {
          $('.address_first_name_kata').append('<p class="wrong-message address_first_name_kata-message">名カナ を入力してください</p>');
        }
      } else {
        $('.address_first_name_kata-message').remove();
      }
    });
  
    $('#user_address_attributes_postal_code').blur(function() {
      if($(this).val() == "" ||
        !$(this).val().match(/^\d{3}[-]\d{4}$|^\d{3}[-]\d{2}$|^\d{3}$/)
      ) {
        if($('.address_postal_code p').hasClass('wrong-message')) {
          return
        } else {
          $('.address_postal_code').append('<p class="wrong-message address_postal_code-message">郵便番号は半角かつハイフンを付けて入力してください</p>');
        }
      } else {
        $('.address_postal_code-message').remove();
      }
    });
  
    $('#user_address_attributes_prefecture').blur(function() {
      if($(this).val() == "") {
        if($('.address_prefecture p').hasClass('wrong-message')) {
          return
        } else {
          $('.address_prefecture').append('<p class="wrong-message address_prefecture-message">都道府県を選択してください</p>');
        }
      } else {
        $('.address_prefecture-message').remove();
      }
    });
  
    $('#user_address_attributes_city').blur(function() {
      if($(this).val() == "") {
        if($('.address_city p').hasClass('wrong-message')) {
          return
        } else {
          $('.address_city').append('<p class="wrong-message address_city-message">市町村を入力してください</p>');
        }
      } else {
        $('.address_city-message').remove();
      }
    });
  
    $('#user_address_attributes_town_number').blur(function() {
      if($(this).val() == "") {
        if($('.address_town_number p').hasClass('wrong-message')) {
          return
        } else {
          $('.address_town_number').append('<p class="wrong-message address_town_number-message">番地を入力してください</p>');
        }
      } else {
        $('.address_town_number-message').remove();
      }
    });
  
    $('.next3').on('click', function() {
      $('.user-registration_form_title3').addClass("hide");
      $('.user-registration_form_title4').removeClass("hide");
      $('.user-registration_form_container3').addClass("hide");
      $('.user-registration_form_container4').removeClass("hide");
      $('#progress4').addClass("progress-red__text");
      $('#progress4-mark').addClass("progress-red__mark");
      $('#progress3-mark').addClass("change-red-back");
      $('#progress4-mark').addClass("change-red-front");
    });
  
    $('#user_card_card_number').blur(function() {
      if($(this).val() == ""  ||
      !$(this).val().match(/^[0-9]+$/)
      ) {
        if($('.card_number p').hasClass('wrong-message')) {
          return
        } else {
          $('.card_number').append('<p class="wrong-message card_number-message">必須項目です</p>');
        }
      } else {
        $('.card_number-message').remove();
      }
    });
  
    $('#user_card_card_limit_month').blur(function() {
      if($(this).val() == "") {
        if($('.card_limit p').hasClass('wrong-message')) {
          return
        } else {
          $('.card_limit').append('<p class="wrong-message card_limit-message">必須項目です</p>');
        }
      } else {
        $('.card_limit-message').remove();
      }
    });
  
    $('#user_card_card_limit_year').blur(function() {
      if($(this).val() == "") {
        if($('.card_limit p').hasClass('wrong-message')) {
          return
        } else {
          $('.card_limit').append('<p class="wrong-message card_limit-message">必須項目です</p>');
        }
      } else {
        $('.card_limit-message').remove();
      }
    });
  
    $('#user_card_card_cord').blur(function() {
      if($(this).val() == ""  ||
      !$(this).val().match(/^[0-9]+$/)
      ) {
        if($('.card_cord p').hasClass('wrong-message')) {
          return
        } else {
          $('.card_cord').append('<p class="wrong-message card_cord-message">必須項目です</p>');
        }
      } else {
        $('.card_cord-message').remove();
      }
    });
  
    $('.next4').on('click', function() {
      $('.user-registration_form_title4').addClass("hide");
      $('.user-registration_form_title5').removeClass("hide");
      $('.user-registration_form_container4').addClass("hide");
      $('.user-registration_form_container5').removeClass("hide");
      $('#progress5').addClass("progress-red__text");
      $('#progress5-mark').addClass("progress-red__mark");
      $('#progress4-mark').addClass("change-red-back");
      $('#progress5-mark').addClass("change-red-front");
    });
  });
  
});
