import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 6,
        child: Scaffold(
            appBar: AppBar(
                title: const Text('Tab Bar Example'),
                centerTitle: true,
                bottom: const TabBar(
                isScrollable: true,
                  tabs: [
                  Text('Tab 1'),
                  Text('Tab 2'),
                  Text('Tab 3'),
                  Text('Tab 4'),
                  Text('Tab 5'),
                  Text('Tab 6')
                ])),
            body: const TabBarView(
              
              children: [
                Center(child: Text('1')),
                Center(child: Text('2')),
                Center(child: Text('3')),
                Center(child: Text('4')),
                Center(child: Text('5')),
                Center(child: Text('6'))
              ],
            )),
      ),
    );
  }
}
