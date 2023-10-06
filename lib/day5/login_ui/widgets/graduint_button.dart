import 'package:flutter/material.dart';

import '../constants/colors.dart';


class GraduinetButton extends StatelessWidget {
  const GraduinetButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          gradient: const  LinearGradient(
              begin: Alignment.bottomLeft,
              end: Alignment.topRight,
              colors: [
                ColorPallit.gradient1,
                ColorPallit.gradient2,
                ColorPallit.gradient3
              ])),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            fixedSize: Size(300, 55),
            backgroundColor: Colors.transparent,
            shadowColor: Colors.transparent),
        onPressed: () {},
        child: Text(
          'Sign in',
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ),
    );
  }
}
