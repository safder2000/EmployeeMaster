import 'package:employee_master/application/auth/auth_bloc.dart';
import 'package:employee_master/core/const_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // TextEditingController nameController = TextEditingController();
    // TextEditingController passwordController = TextEditingController();
    return BlocBuilder<AuthBloc, AuthState>(
      builder: (context, state) {
        var screeSize = MediaQuery.of(context).size;
        return SafeArea(
          child: Scaffold(
            body: ListView(
              physics: NeverScrollableScrollPhysics(),
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height,
                  child: Column(
                    children: [
                      //welcome graphics...top
                      // WelcomeContainer(),
                      SizedBox(
                        height: screeSize.width,
                      ),

                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.9,
                        child: TextFormField(
                            onChanged: ((value) => context
                                .read<AuthBloc>()
                                .add(LoginEmailChanged(email: value.trim()))),
                            decoration: const InputDecoration(
                              fillColor: Colors.black12,
                              filled: true,
                              border: OutlineInputBorder(
                                // width: 0.0 produces a thin "hairline" border
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10.0)),
                                borderSide: BorderSide.none,
                              ),
                              label: Center(child: Text('Enter Username')),
                            ),
                            textAlign: TextAlign.center),
                      ),
                      const SizedBox(
                        height: 18,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.9,
                        child: TextFormField(
                            onChanged: ((value) => context.read<AuthBloc>().add(
                                LoginPasswordChanged(password: value.trim()))),
                            decoration: const InputDecoration(
                              fillColor: Colors.black12,
                              filled: true,
                              border: OutlineInputBorder(
                                // width: 0.0 produces a thin "hairline" border
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10.0)),
                                borderSide: BorderSide.none,
                              ),
                              label: Center(child: Text('Enter Password')),
                            ),
                            textAlign: TextAlign.center),
                      ),

                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 60),
                        child: SizedBox(
                          height: 50,
                          width: MediaQuery.of(context).size.width * 0.9,
                          child: ElevatedButton(
                            onPressed: () {
                              context
                                  .read<AuthBloc>()
                                  .add(LoginSubmitted(context: context));
                            },
                            style: ElevatedButton.styleFrom(
                              elevation: 0,
                              backgroundColor: darkblue,
                              shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.circular(12), // <-- Radius
                              ),
                            ),
                            child: const Text(
                              'Login',
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
