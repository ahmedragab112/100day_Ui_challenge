import 'package:flutter/material.dart';
import 'package:uichallenge/day5/widgets/graduint_button.dart';

import '../widgets/build_button.dart';
import '../widgets/build_filed.dart';


class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);
  static const String routeName = 'loginHomePage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                Image.asset(
                  'assets/images/signin_balls.png',
                ),
                Text(
                  'Sign in',
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                const SizedBox(
                  height: 50,
                ),
                const BuildButton(
                    txt: 'Continue with Google', svg: 'assets/svg/g_logo.svg'),
                const SizedBox(
                  height: 15,
                ),
                const BuildButton(
                    txt: 'Continue with Facebook',
                    svg: 'assets/svg/f_logo.svg'),
                const SizedBox(
                  height: 50,
                ),
                Text(
                  'or',
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                const SizedBox(
                  height: 15,
                ),
                const BuildFiled(txt: 'Email', type: TextInputType.emailAddress),
                const SizedBox(
                  height: 15,
                ),
                const BuildFiled(
                    txt: 'Password', type: TextInputType.visiblePassword),
                const SizedBox(
                  height: 15,
                ),
                const GraduinetButton()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
