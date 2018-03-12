$("#form_id").validate({
  //error place
  errorPlacement: function (error, element) {
    error.insertBefore(element);
  },
  rules: {
  "user[name]":{
    required: true,
    maxlength: 20,
    minlength: 6
  },
  "user[email]": {
    required: true,
    email: true
  },
  "user[password]": {
    required: true
  },
  "user[password_confirmation]": {
    required: true,
    equalTo: "#user_password"
  },
  "user[school]": {
    required: true,
  },
  "user[graduation]": {
    required: true,
  }
  },
  messages: {
    name:{
      required: I18n.t(".required_name"),
      maxlength: I18n.t(".maxlength_name"),
      minlength: I18n.t(".minlength_name")
    },
    mail:{
      required: I18n.t(".required_email"),
      email: I18n.t(".email")
    },
    password: {
      required: I18n.t(".required_password")
    },
    password_confirmation: {
      required: I18n.t(".required_password_confirmation"),
      equalTo: I18n.t(".password_confirmation")
    },
    school: {
      required: I18n.t(".required_school"),
    },
    graduation: {
      required: I18n.t(".required_graduation"),
    }
  }
});
