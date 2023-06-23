abstract class SignupEvents {}

class InputChangeSignupEvent extends SignupEvents {
  String name;
  String email;
  String password;
  String phone;
  String cnic;
  InputChangeSignupEvent({
    required this.name,
    required this.email,
    required this.password,
    required this.phone,
    required this.cnic,
  });
}

class SubmittedSignupEvent extends SignupEvents {
  String name;
  String email;
  String password;
  String phone;
  String cnic;
  SubmittedSignupEvent({
    required this.name,
    required this.email,
    required this.password,
    required this.phone,
    required this.cnic,
  });
}
