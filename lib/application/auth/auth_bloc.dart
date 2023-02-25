import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:employee_master/infrastructure/auth/auth_repo.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(AuthInitial()) {
    on<AuthEvent>((event, emit) {
      // TODO: implement event handler
    });
    on<LoginEmailChanged>((event, emit) {
      try {
        emit(LoggedOutState(email: event.email ?? 'null value'));
        log('new username${event.email}');
      } catch (e) {
        print(e);
      }
    });
    on<LoginPasswordChanged>((event, emit) {
      try {
        emit(LoggedOutState(password: event.password ?? 'null value'));
        log('new username${event.password}');
      } catch (e) {
        print(e);
      }
    });
    on<LoginSubmitted>((event, emit) async {
      try {
        // UserCredential userCred = await AuthRepo.signIn(
        //     email: LoggedOutState().email, password: LoggedOutState().password);
        var userCred = await AuthRepo.signIn(
            email: 'testemail@gmail.com', password: '12345678');

        log(userCred.toString());
        // if(userCred.)
      } catch (e) {
        print(e);
      }

      emit(LoggedOutState());
    });
  }
}
