part of 'auth_bloc.dart';

@immutable
abstract class AuthEvent {}

class Login extends AuthEvent {
  String password;
  String email;
  Function? onSuccess;
  Function? onError;

  Login({required this.email, required this.password, this.onError, this.onSuccess});




}

class AppStarted extends AuthEvent{

  


}
