import 'package:app2/API/repositories/repository.dart';
import 'package:app2/appblock/app_events.dart';
import 'package:app2/appblock/appstate.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

class AppBlock extends Bloc<AppEvent, Appstate> {
  // final AppRepository _appRepository;
  AppBlock() : super(Appstate1(user: {}, loginLoading: false)) {
    on<LoginUserStart>((event, emit) async {
      try {
        emit(Appstate2(user: const {}, loginLoading: true));
        var response = await AppRepository.loginUser(
            password: event.password, username: event.username);
        print('hello $response');
        emit(AppstateLoaded(loginLoading: false));
      } catch (e) {
        print("an error happened $e");
        emit(AppstateLoaded(loginLoading: false));
      }
    });
  }
}
