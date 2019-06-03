$(function() {

  $('#user_user_nickname').blur(function() {
    if($(this).val() == "") {
      $('.nickname').append('<p class="wrong-message nickname-message">ニックネームを入力してください</p>');
    } else {
      $('.nickname-message').addClass("hide");
    }
  });

  $('#user_user_email').blur(function() {
    if($(this).val() == "" ||
    !$(this).val().match(/^([a-zA-Z0-9])+([a-zA-Z0-9\._-])*@([a-zA-Z0-9_-])+([a-zA-Z0-9\._-]+)+$/)
    ) {
      $('.email').append('<p class="wrong-message mail-message">メールアドレスを入力してください</p>');
    } else {
      $('.mail-message').addClass("hide");
    }
  });
  
  $('#user_user_password').blur(function() {
    if($(this).val() == "" ||
      !$(this).val().match(/^[a-zA-Z0-9]+$/)||
      $(this).val().length < 6
    ) {
      $('.password').append('<p class="wrong-message password-message">パスワードを入力してください<br>パスワードは6文字以上128文字以下で入力してください</p>');
    } else {
      $('.password-message').addClass("hide");
    }
  });

  $('#user_user_password_confirmation').blur(function() {
    if($(this).val() != $('#user_user_password').val()) {
      $('.password_confirmation').append('<p class="wrong-message password_confirmation-message">パスワード (確認) を入力してください</p>');
    } else {
      $('.password_confirmation-message').addClass("hide");
    }
  });

  $('#user_user_profile_attributes_last_name').blur(function() {
    if($(this).val() == "" ||
      !$(this).val().match(/^[^\x01-\x7E\xA1-\xDF]+$/)
    ) {
      $('.last_name').append('<p class="wrong-message last_name-message">姓 を入力してください</p>');
    } else {
      $('.last_name-message').addClass("hide");
    }
  });

  $('#user_user_profile_attributes_first_name').blur(function() {
    if($(this).val() == "" ||
      !$(this).val().match(/^[^\x01-\x7E\xA1-\xDF]+$/)
    ) {
      $('.first_name').append('<p class="wrong-message first_name-message">名 を入力してください</p>');
    } else {
      $('.first_name-message').addClass("hide");
    }
  });

  $('#user_user_profile_attributes_last_name_kata').blur(function() {
    if($(this).val() == "" ||
      !$(this).val().match(/^[\u30a1-\u30f6]+$/)
    ) {
      $('.last_name_kata').append('<p class="wrong-message last_name_kata-message">姓カナ を入力してください</p>');
    } else {
      $('.last_name_kata-message').addClass("hide");
    }
  });

  $('#user_user_profile_attributes_first_name_kata').blur(function() {
    if($(this).val() == "" ||
      !$(this).val().match(/^[\u30a1-\u30f6]+$/)
    ) {
      $('.first_name_kata').append('<p class="wrong-message first_name_kata-message">姓カナ を入力してください</p>');
    } else {
      $('.first_name_kata-message').addClass("hide");
    }
  });

  $('.next1').on('click', function() {
    $('.user-registration_form_title1').addClass("hide");
    $('.user-registration_form_title2').removeClass("hide");
    $('.user-registration_form_container1').addClass("hide");
    $('.user-registration_form_container2').removeClass("hide");
  });

  $('.next2').on('click', function() {
    $('#user_user_profile_attributes_tel').val()

    if($('#user_user_profile_attributes_tel').val() == "" ||
      !$('#user_user_profile_attributes_tel').val().match(/^0\d{9,10}$/)
    ) {
      $('.tel').append('<p class="wrong-message tel-message">電話番号(ハイフンなし) を入力してください</p>');
      return;
    } else {
      $('.tel-message').addClass("hide");
      $('.user-registration_form_title2').addClass("hide");
      $('.user-registration_form_title3').removeClass("hide");
      $('.user-registration_form_container2').addClass("hide");
      $('.user-registration_form_container3').removeClass("hide");
    }
  });

  $('.next3').on('click', function() {
    $('.user-registration_form_title3').addClass("hide");
    $('.user-registration_form_title4').removeClass("hide");
    $('.user-registration_form_container3').addClass("hide");
    $('.user-registration_form_container4').removeClass("hide");
  });
});
