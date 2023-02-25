part of 'auth_bloc.dart';

enum AuthStatus { athenticated, unathenticated }

@immutable
abstract class AuthState {}

class AuthInitial extends AuthState {}

class LoggedOutState extends AuthState {
  final String email;
  final String password;

  LoggedOutState({
    this.email = '',
    this.password = '',
  });

  LoggedOutState copyWith({
    String? password,
    String? email,
  }) {
    return LoggedOutState(
      email: email ?? this.email,
      password: password ?? this.password,
    );
  }
}

class LoggedInState extends AuthState {
  final String email;
  final String password;

  LoggedInState({
    this.email = '',
    this.password = '',
  });
}
