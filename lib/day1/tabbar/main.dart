import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   return ScreenUtilInit(
       designSize: const Size(360, 690),
       minTextAdapt: true,
       splitScreenMode: true,
  builder: (context, child) =>    MaterialApp(
    debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 6,
        child: Scaffold(
          appBar: AppBar(
            toolbarHeight: 100.h,
            shape: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.transparent),
              borderRadius: BorderRadius.circular(20)
            ),
            title: const Text('Tab Bar Example'),
            centerTitle: true,
            bottom:const TabBar(

                dividerColor: Colors.red,
                unselectedLabelColor: Colors.grey,
                labelColor: Colors.red,
                tabs: [
              Text('Tab 1'),
              Text('Tab 2'),
              Text('Tab 3'),
                  Text('Tab 4'),
                  Text('Tab 5'),
                  Text('Tab 6')
            ])
          ),
          body:const TabBarView(
           children: [
             Center(child: Text('1')),
             Center(child: Text('2')),
             Center(child: Text('3')),
             Center(child: Text('4')),
             Center(child: Text('5')),
             Center(child: Text('6'))
           ], 
          )
        ),
      ),
    )
    );
  }
}
