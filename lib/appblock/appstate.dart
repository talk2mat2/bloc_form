import 'package:app2/API/models/UserModel.dart';
import 'package:equatable/equatable.dart';

abstract class Appstate extends Equatable {
  // final List<UserModel>? users;

  // const Appstate({required this.users});
}

// class InitStates extends Appstate {
//   @override
//   List<Object> get props => [];
//   InitStates();
// }

// class AppstateLoaded extends Appstate {
//   final List<UserModel> users;
//   @override
//   List<Object> get props => [users];
//   AppstateLoaded({required this.users});
// }
class Appstate1 extends Appstate {
  final Map<String, dynamic>? user;
  final bool loginLoading;
  Appstate1({this.user, required this.loginLoading});
  // Appstate setLoading(bool value) {
  //   return Appstate(user: user, loginLoading: value);
  // }

  @override
  List<Object> get props => [user ?? {}];
}

class Appstate2 extends Appstate {
  final Map<String, dynamic>? user;
  final bool loginLoading;
  Appstate2({this.user, required this.loginLoading});
  // Appstate setLoading(bool value) {
  //   return Appstate(user: user, loginLoading: value);
  // }

  @override
  List<Object> get props => [user ?? {}];
}

class AppstateLoaded extends Appstate {
  final bool loginLoading;
  @override
  List<Object> get props => [];
  AppstateLoaded({required this.loginLoading});
}
