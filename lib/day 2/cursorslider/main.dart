import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(BuildCursorSliderWidget());
}

class BuildCursorSliderWidget extends StatelessWidget {
  BuildCursorSliderWidget({Key? key}) : super(key: key);
final  CarouselController buttonCarouselController = CarouselController();

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
            Center(
              child: CarouselSlider(
                items: [//it take a list of widgets to show them
                  Image.network('https://th.bing.com/th/id/OIP.gyauZK1TSw0ex3Is9gdfBAHaJQ?pid=ImgDet&rs=1')
                ,
                  Image.network('https://th.bing.com/th/id/OIP.7WFzqvBs9eTs334oWxKfZAAAAA?pid=ImgDet&w=202&h=202&c=7&dpr=1.3')
                ,
                  Image.network('https://yt3.ggpht.com/a/AATXAJwsnv7i3EToCGYem3IxG8-J6XHorv7awY76nw=s900-c-k-c0xffffffff-no-rj-mo')
                ],
                carouselController: buttonCarouselController//the controller of the carouse to use it later
          ,
                options: CarouselOptions(
                  autoPlay: true,//auto play the carsour
                  animateToClosest: true,
                  autoPlayCurve: Curves.linear,//type of scrolling in the cursor
                  autoPlayAnimationDuration:const Duration(seconds: 1),//duration of the moving
                  enlargeCenterPage: true,
                  viewportFraction: .6,//you can change it to show the next or the perivous widget
                  aspectRatio: 4.0,//ration of the caursor if it large then the widget become more smaller
                  initialPage: 0,//which widget you will start from
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed: () => buttonCarouselController.previousPage(//navigate to the previous widget with timing
                      duration: const Duration(milliseconds: 300), curve: Curves.linear),
                  child: const Text('←'),
                ),
                ElevatedButton(
                  onPressed: () => buttonCarouselController.nextPage(//navigate to the next widget with timing
                      duration: const Duration(milliseconds: 300), curve: Curves.linear),
                  child:const Text('→',style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                ),
              ],
            )
          ]),
        ),
      ),
    );
  }
}
