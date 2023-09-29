import 'package:flutter/material.dart';

void main(){

  runApp(const BuildCursorSliderWidget());
}
class BuildCursorSliderWidget extends StatelessWidget  {
  const BuildCursorSliderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(child: Text('home'),),
      ),
    );
  }
}
