part of 'auth_bloc.dart';

@immutable
abstract class AuthEvent {}

class LoginEmailChanged extends AuthEvent {
  LoginEmailChanged({this.email});
  final String? email;
}

class LoginPasswordChanged extends AuthEvent {
  LoginPasswordChanged({this.password});
  final String? password;
}

class LoginSubmitted extends AuthEvent {
  LoginSubmitted({required this.context});
  final BuildContext context;
}

class Logout extends AuthEvent {
  Logout({required this.context});
  final BuildContext context;
}
