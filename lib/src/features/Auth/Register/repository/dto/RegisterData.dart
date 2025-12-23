class RegisterData {
  String name;
  String email;
  String password;
  String password_confirmation;
  RegisterData({
    required this.name,
    required this.email,
    required this.password,
    required this.password_confirmation,
  });
  Map<String, String> toJson() => {
    'name': name,
    "email": email,
    "password": password,
    "password_confirmation": password_confirmation,
  };
}
