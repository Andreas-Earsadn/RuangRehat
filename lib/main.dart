// @dart=2.9
import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:login_example/model/colorpallete.dart';

import 'package:login_example/register.dart';
import 'package:login_example/splash_screen.dart';
import 'package:login_example/banner.dart';
import 'package:shared_preferences/shared_preferences.dart';


import 'homepage/home.dart';
import 'login.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ruang Rehat',
      home: SplashScreen(),
      routes: <String, WidgetBuilder>{
        "/BannerPage": (BuildContext context) => new BannerScreen(),
        "/LoginPage": (BuildContext context) => new Login(),
        "/RegisterPage": (BuildContext context) => new Register(),
        "/HomePage": (BuildContext context) => new Home(),
      },
    ));

List<String> imagePath = [
  "assets/images/loker.png",
  "assets/images/loker.png",
  "assets/images/loker.png"
];

List<String> title = [
  "Aplikasi Pencarian Alumni Di Unika St Thomas",
  "Networking Bersama Alumni Unika St Thomas",
  "Pantau Terus Info Lowongan Kerja"
];

List<String> description = [
  "Menjalin networking bersama alumni Unika St Thomas Mendapat Banyak Manfaat",
  "Berbagi pengalaman dan ilmu di dunia kerja yang insightful",
  "Telah membantu banyak freshgraduate Unika St Thomas dalam pencarian pekerjaan"
];

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  RuangRehatColors.RehatWhite,
      body: ContentPage(),
    );
  }
}

class FirstRun extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new FutureBuilder<SharedPreferences>(
      future: SharedPreferences.getInstance(),
      builder: (BuildContext context, AsyncSnapshot<SharedPreferences> snapshot) {
        switch (snapshot.connectionState) {
          case ConnectionState.none:
          case ConnectionState.waiting:
            return new HomePage();
          default:if (!snapshot.hasError)
              return snapshot.data?.getBool("first run") != null
                  ? new HomePage()
                  : new BannerScreen();
        }

        return Text("Unika St Thomas");
      },
    );
  }
}

class ContentPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: CarouselSlider(

        options: CarouselOptions(
          autoPlay: true,
          enableInfiniteScroll: false,
          initialPage: 0,
          reverse: false,
          viewportFraction: 1.0,
          autoPlayInterval: Duration(seconds: 3),
          autoPlayAnimationDuration: Duration(milliseconds: 800),
          autoPlayCurve: Cubic(0.4, 0.0, 0.2, 1.0),
          aspectRatio: MediaQuery.of(context).size.aspectRatio,
          pauseAutoPlayOnTouch: true,
          height: MediaQuery.of(context).size.height / 1.2,),

          items: [0, 1, 2].map((i) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                    width: MediaQuery.of(context).size.width,
                    child: AppIntro(i));
              },
            );
          }).toList(),
        ),
      ),
    );
  }
}

class AppIntro extends StatefulWidget {
  int index;
  AppIntro(this.index);
  @override
  _AppIntroState createState() => _AppIntroState();
}

class _AppIntroState extends State<AppIntro> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        children: <Widget>[
          Center(
            child: Text(
              title[widget.index],
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 45, color: Colors.black),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Center(
              child: Text(
                description[widget.index],
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 19, color: Color(0xFFAFDFC7)),
              ),
            ),
          ),
          Expanded(
            child: Center(
              child: Container(
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: <Widget>[
                    Image.asset(imagePath[widget.index]),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    height: 30,
                    child: Stack(
                      children: <Widget>[DotsIndicators(widget.index)],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class DotsIndicators extends StatefulWidget {
  int pageIndex;
  DotsIndicators(this.pageIndex);
  @override
  _DotsIndicatorsState createState() => _DotsIndicatorsState();
}

class _DotsIndicatorsState extends State<DotsIndicators> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: 3,
      itemBuilder: (context, int index) {
        return Center(
          child: Container(
            margin: EdgeInsets.only(right: 10),
            width: 10,
            height: 10,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: index == widget.pageIndex? Colors.amberAccent: Colors.yellowAccent,
          ),
          ),
        );
      },
    );
  }
}
