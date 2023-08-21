class LoginState {
  String? username;
  String? password;
  bool? loginLoading;
  LoginState(
      {this.password = "", this.username = "", this.loginLoading = false});
  LoginState copyWith(
      {String? password, String? username, bool? loginLoading}) {
    return LoginState(
        password: password ?? this.password,
        username: username ?? this.username,
        loginLoading: loginLoading ?? this.loginLoading);
  }
}

class InitState extends LoginState {
  InitState() : super(password: "", username: "", loginLoading: false);
}
