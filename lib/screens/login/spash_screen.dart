import 'package:employee_master/core/const_colors.dart';
import 'package:employee_master/screens/employee_list/screen_employee_list.dart';
import 'package:employee_master/screens/login/screen_login.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class SpalshScreen extends StatelessWidget {
  const SpalshScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
          stream: FirebaseAuth.instance.authStateChanges(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return CircularProgressIndicator(
                color: darkblue,
              );
            } else if (snapshot.hasError) {
              return const Center(
                child: Text('Somthing went wrong'),
              );
            } else if (snapshot.hasData) {
              return EmployeeListScreen();
            } else {
              return LoginScreen();
            }
          }),
    );
  }
}
