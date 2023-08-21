import 'package:app2/appblock/app_block.dart';
import 'package:app2/appblock/app_events.dart';
import 'package:app2/pages/login/bloc/login_bloc.dart';
import 'package:app2/pages/login/bloc/login_event.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

SnackBar snackBar(String message) {
  return SnackBar(
    content: Text(message),
  );
}

class LoginController {
  final BuildContext context;

  const LoginController({required this.context});

  handleLogin() {
    var username = BlocProvider.of<LoGinBlock>(context).state.username ?? "";
    var password = BlocProvider.of<LoGinBlock>(context).state.password ?? "";
    if (username.isEmpty || password.isEmpty) {
      return ScaffoldMessenger.of(context)
          .showSnackBar(snackBar("inavlid login details"));
    }
    try {
      // BlocProvider.of<LoGinBlock>(context).add(LoginLoading(loading: true));

      BlocProvider.of<AppBlock>(context)
          .add(LoginUserStart(password: password, username: username));
    } catch (err) {
      return ScaffoldMessenger.of(context)
          .showSnackBar(snackBar("A network error occured"));
    }
    // BlocProvider.of<LoGinBlock>(context).add(LoginLoading(loading: false));
    // var payload = {"username": username, 'password': password};

    // print(username);
    print(password);
  }
}
