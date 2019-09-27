import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:test_project/info.dart';
import 'package:test_project/magazine.dart';

void main() => runApp(MaterialApp(
  home: MyApp(),
  theme: ThemeData(
    brightness: Brightness.dark,
    primaryColor: Colors.black
  ),
));

List magazines = ["assets/pdf/start_franchising_settembre_2019_web.pdf", "assets/pdf/startfranchising_n2_201919.pdf", "assets/pdf/startfranchising_n1_2019-1.pdf", "assets/pdf/start-franchising-anno3-no3.pdf", "assets/pdf/start-franchising-anno3-no2.pdf", "assets/pdf/start-franchising-anno3-no1.pdf", "assets/pdf/start-franchising-anno2-no4.pdf", "assets/pdf/start-franchising-anno2-no3.pdf", "assets/pdf/start-franchising-anno2-no2.pdf", "assets/pdf/start-franchising-anno2-no1.pdf", "assets/pdf/start-franchising-anno1-no1.pdf" ];
List thumbnails = ["assets/images/magazine0-0.png", "assets/images/magazine1-0.png","assets/images/magazine2-0.png","assets/images/magazine3-0.png","assets/images/magazine4-0.png","assets/images/magazine5-0.png","assets/images/magazine6-0.png","assets/images/magazine7-0.png","assets/images/magazine8-0.png","assets/images/magazine9-1.png", "assets/images/magazine10-0.png"];

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Start Franchising"),
        elevation: 0,
        actions: < Widget > [
          IconButton(
            icon: Icon(Icons.info),
            onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => InfoRoute())),
          )
        ],
      ),
      body: OrientationBuilder(
        builder: (context, orientation) {
          return Container(
            child: Swiper(
              loop: false,
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => MagazineRoute(pdfName: magazines[index],))),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30)
                    ),
                    child: Image(
                      image: AssetImage(thumbnails[index]),
                      fit: BoxFit.contain,
                    ),
                  ),
                );
              },
              itemCount: thumbnails.length,
              viewportFraction: orientation == Orientation.portrait ? 0.8 : 0.4,
              scale: 0.9,
            ),
          );
        },
      )
    );
  }
}