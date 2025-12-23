class Logindto {
 
  String email;
  String password;

  Logindto({

    required this.email,
    required this.password,
    
  });
  Map<String, String> toJson() => {
 
    "email": email,
    "password": password,
    
  };
}
