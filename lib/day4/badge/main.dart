import 'package:flutter/material.dart';

void main() {
  runApp(const BadgeWidget());
}

class BadgeWidget extends StatelessWidget {
  const BadgeWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          body: SafeArea(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.start, children: [
              TabBar(


                  tabs: [

                Badge(
                  label: Text('1'),
                  child: Icon(
                    Icons.shopping_cart,
                    color: Colors.red,
                  ),
                ),
                Badge(
                  //it takes an label with child you can warp it in tabpar widget
                  label: Text('2'),
                  child: Icon(
                    Icons.shopping_cart,
                    color: Colors.green,
                  ),
                ),
                Icon(
                  Icons.ac_unit,
                  color: Colors.red,
                ),
                    Badge(
                      label: Text('1'),
                      child: Icon(
                        Icons.shopping_cart,
                        color: Colors.red,
                      ),
                    ),

              ]),

              //as like listview it must have it's hight beacuse it's must be bounded
              Expanded(
                  child: TabBarView(children: [
                Center(child: Text('1')),
                Center(child: Text('2')),
                Center(
                  child: Text('3'),
                )
              ]))
            ]),
          ),
        ),
      ),
    );
  }
}
