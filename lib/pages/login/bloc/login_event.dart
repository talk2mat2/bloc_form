class AppEvents {}

class HandleChangeUsername extends AppEvents {
  final String username;
  HandleChangeUsername({required this.username});
}

class HandleChangePassword extends AppEvents {
  final String password;
  HandleChangePassword({required this.password});
}
