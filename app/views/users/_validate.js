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
      required: "Username is required.",
      maxlength: "Username must be less than 20",
      minlength: "Username must be more than 6"
    },
    mail:{
      required: "Email is required",
      email: "Please enter a valid email address"
    },
    password: {
      required: "Password is required"
    },
    password_confirmation: {
      required: "Password confirmation is required",
      equalTo: "Password and password confirmation must be same"
    },
    school: {
      required: "school is required",
    },
    graduation: {
      required: "graduation is required",
    }
  }
});