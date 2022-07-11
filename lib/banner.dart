import 'package:flutter/material.dart';
import 'package:sk_onboarding_screen/flutter_onboarding.dart';
import 'package:sk_onboarding_screen/sk_onboarding_screen.dart';



class BannerScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return BannerScreenState();
  }
}

class BannerScreenState extends State<BannerScreen> with TickerProviderStateMixin {
  final GlobalKey<ScaffoldState> _globalKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      key: _globalKey,
      body: Container(
        child: SKOnboardingScreen(
          bgColor: Colors.white,
          themeColor: const Color(0xFFA1C9CB),
          pages: pages,
          skipClicked: (value) async {
            Navigator.of(context).pushNamed("/LoginPage");
            print(value);
            _globalKey.currentState?.showSnackBar(SnackBar(
              content: Text("Skip clicked"),

            ));
          },
          getStartedClicked: (value) {
            Navigator.of(context).pushNamed("/LoginPage");
            print(value);
            _globalKey.currentState?.showSnackBar(
                SnackBar(
              content: Text("Get Started clicked"),
            ));
          },
        ),
      ),
    );
  }

  final pages = [
    SkOnboardingModel(
        title: 'Hi, Welcome To Ruang Rehat',
        description:
        'Relieve Your Stress Problems With Us',
        titleColor: Colors.black,
        descripColor: const Color(0xFF929794),
        imagePath: 'assets/images/onboarding.png'),
    SkOnboardingModel(
  title: 'Hi, Welcome To Ruang Rehat',
  description:
  'Relieve Your Stress Problems With Us',
  titleColor: Colors.black,
  descripColor: const Color(0xFF929794),
  imagePath: 'assets/images/splash.png'),
    SkOnboardingModel(
  title: 'Hi, Welcome To Ruang Rehat',
  description:
  'Relieve Your Stress Problems With Us',
  titleColor: Colors.black,
  descripColor: const Color(0xFF929794),
  imagePath: 'assets/images/splash.png'),
  ];
}