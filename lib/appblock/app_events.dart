import 'package:app2/API/models/UserModel.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

abstract class AppEvent extends Equatable {
  const AppEvent();

  @override
  List<Object> get props => [];
}

class LoginUserStart extends AppEvent {
  final String username;
  final String password;
  const LoginUserStart({required this.password, required this.username});
}

class LoginUserEvent extends AppEvent {
  final List<UserModel> user;
  const LoginUserEvent({required this.user});
}
