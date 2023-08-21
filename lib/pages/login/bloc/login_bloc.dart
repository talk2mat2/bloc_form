import 'package:app2/pages/login/bloc/login_event.dart';
import 'package:app2/pages/login/bloc/login_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoGinBlock extends Bloc<AppEvents, LoginState> {
  LoGinBlock() : super(InitState()) {
    on<HandleChangeUsername>((event, emit) {
      emit(state.copyWith(username: event.username));
    });
    on<HandleChangePassword>((event, emit) {
      emit(state.copyWith(password: event.password));
    });

    on<LoginLoading>((event, emit) {
      emit(state.copyWith(loginLoading: event.loading));
    });
  }
}
