import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../constants/colors.dart';

class BuildButton extends StatelessWidget {
  const BuildButton({super.key, required this.txt, required this.svg});
  final String svg;
  final String txt;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      child: TextButton.icon(
        style: TextButton.styleFrom(
          maximumSize: const Size(double.infinity, 100),
          padding: const EdgeInsets.all(24),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
              side: const BorderSide(color: ColorPallit.borderColor, width: 3)),
        ),
        onPressed: () {},
        icon: SvgPicture.asset(
          svg,
          width: 25,
          height: 20,
          color: Colors.white,
        ),
        label: Text(txt, style: Theme.of(context).textTheme.bodyMedium),
      ),
    );
  }
}
