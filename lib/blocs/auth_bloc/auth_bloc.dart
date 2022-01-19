import 'package:bloc/bloc.dart';
import 'package:foodhub/food_hub/services/authServices.dart';
import 'package:meta/meta.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(AuthState()) {
    on<AuthEvent>((event, emit) {
      if (event is Login) {
        AuthService().login(event.email, event.password,
            onSucces: event.onSuccess, onError: event.onError!);
      }

      if (event is AppStarted) {
        emit(state.copyWith(isInitial: false));
      }
    });
  }
}
