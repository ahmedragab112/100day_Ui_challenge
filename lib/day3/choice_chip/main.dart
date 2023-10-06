import 'package:flutter/material.dart';

void main(){

  runApp(const ChoiceChipWidget());
}

class ChoiceChipWidget extends StatefulWidget {
  const ChoiceChipWidget({Key? key}) : super(key: key);

  @override
  State<ChoiceChipWidget> createState() => _ChoiceChipWidgetState();
}

class _ChoiceChipWidgetState extends State<ChoiceChipWidget> {
bool selected=false;

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home:Scaffold(
        body: Center(
          child: ChoiceChip(
    //  avatar: Image.network()
            //  you can set the image you want to ,
            backgroundColor: Colors.red,//default color
            selectedColor: Colors.blue,//when you select it
            label: const Text('ChoiceChip'), selected:selected,
          onSelected: (value) {
            selected=value;
            setState(() {

            });
          },),
        ),
      )
    );
  }
}
