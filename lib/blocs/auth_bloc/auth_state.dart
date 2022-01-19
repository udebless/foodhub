part of 'auth_bloc.dart';

class AuthState {
  final bool isInitial;

  AuthState({this.isInitial = true});

  AuthState copyWith({bool? isInitial}) {
    return AuthState(isInitial: isInitial ?? this.isInitial);
  }
}
