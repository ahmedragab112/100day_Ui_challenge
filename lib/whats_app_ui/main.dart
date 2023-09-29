import 'package:flutter/material.dart';
import 'package:uichallenge/whats_app_ui/pages/what_app_home.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      initialRoute:WhatsAppHome.routeName,
      routes: {
        WhatsAppHome.routeName :(context) => const WhatsAppHome()
      },
    );
  }
}
