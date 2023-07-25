class LoginState {
  String? username;
  String? password;
  LoginState({this.password = "", this.username = ""});

  LoginState copyWith({String? password, String? username}) {
    return LoginState(
        password: password ?? this.password,
        username: username ?? this.username);
  }
}

class InitState extends LoginState {
  InitState() : super(password: "", username: "");
}
