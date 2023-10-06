import 'package:flutter/material.dart';

import '../constants/colors.dart';

class BuildFiled extends StatelessWidget {
  const BuildFiled({super.key, required this.txt, required this.type});
  final String txt;
  final TextInputType type;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      child: TextFormField(
        style: Theme.of(context).textTheme.bodyMedium,
        keyboardType: type,
        decoration: InputDecoration(
          hintStyle: Theme.of(context)
              .textTheme
              .bodyMedium!
              .copyWith(color: ColorPallit.borderColor),
          hintText: txt,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide:
                const BorderSide(color: ColorPallit.borderColor, width: 3),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide:
                const BorderSide(color: ColorPallit.borderColor, width: 3),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide:
                const BorderSide(color: ColorPallit.borderColor, width: 3),
          ),
        ),
      ),
    );
  }
}
