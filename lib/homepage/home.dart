import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_example/model/colorpallete.dart';
import 'package:login_example/widgets/faq.dart';
import 'package:login_example/widgets/kontenRR.dart';

import '../widgets/promoruangrehat.dart';
import '../widgets/popularfeature.dart';
import '../widgets/searchwidget.dart';
import '../widgets/topmenus.dart';


class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}
class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Builder(
        builder: (context) => IconButton(
      icon: Icon(Icons.menu_rounded, color: RuangRehatColors.RehatBlack,),
      onPressed: () => Scaffold.of(context).openDrawer(),
        ),),

        backgroundColor: RuangRehatColors.RehatSecondaryLight,
        elevation: 0,

        brightness: Brightness.light,
        actions: <Widget>[
          IconButton(
              icon: Icon(
                Icons.mail_outline,
                color: Color(0xFF3a3737),
              ),
              onPressed: () {
                // Navigator.push(context, ScaleRoute(page: SignInPage()));
              }),
          IconButton(
              icon: Icon(
                Icons.notifications_none,
                color: Color(0xFF3a3737),
              ),
              onPressed: () {
                // Navigator.push(context, ScaleRoute(page: SignInPage()));
                })
          ],
      ),
      drawer: Drawer(
        child: ListView(
            padding: EdgeInsets.all(0.0),
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(child: Image.asset('assets/images/login_image.png', fit: BoxFit.fitWidth,)),
              ),
              ListTile(
                title: Text(
                  "Privacy Policy",
                  style: GoogleFonts.poppins(textStyle:TextStyle(color: RuangRehatColors.RehatPrimary, fontSize: 13, fontWeight: FontWeight.bold, )),
                ),
                leading: Icon(Icons.security,color: RuangRehatColors.RehatPrimary,),
                onLongPress: (){},
              ),


              Divider(),


              ListTile(
                title: Text(
                  "Terms Of Service",
                  style: GoogleFonts.poppins(textStyle:TextStyle(color: RuangRehatColors.RehatPrimary, fontSize: 13, fontWeight: FontWeight.bold, )),
                ),
                leading: Icon(Icons.event_note, color: RuangRehatColors.RehatPrimary,),
              ),

              ListTile(
                title: Text(
                  "FAQ",
                  style: GoogleFonts.poppins(textStyle:TextStyle(color: RuangRehatColors.RehatPrimary, fontSize: 13, fontWeight: FontWeight.bold, )),
                ),
                leading: Icon(Icons.question_answer_outlined, color: RuangRehatColors.RehatPrimary,),
                onLongPress: (){},
              ),


              ListTile(
                title: Text(
                  "Rate App",
                  style: GoogleFonts.poppins(textStyle:TextStyle(color: RuangRehatColors.RehatPrimary, fontSize: 13, fontWeight: FontWeight.bold, )),
                ),
                leading: Icon(Icons.star, color: RuangRehatColors.RehatPrimary,),
                onLongPress: (){},
              ),


              Divider(),


              ListTile(
                title: Text(
                  "Account",
                  style: GoogleFonts.poppins(textStyle:TextStyle(color: RuangRehatColors.RehatPrimary, fontSize: 13, fontWeight: FontWeight.bold, )),
                ),
                leading: Icon(Icons.person_pin, color: RuangRehatColors.RehatPrimary,),
                onLongPress: (){},
              ),

              Divider(),

                         ]
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height/4,
              decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage('assets/images/header_homepage.png'),

                      fit: BoxFit.cover)
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left: 20, bottom: 10),
                      child: Text(
                        "Hello, Jeremy Manurung                                                       ",
                        style: GoogleFonts.poppins(textStyle:TextStyle(color: RuangRehatColors.RehatBlack, fontSize: 15, fontWeight: FontWeight.bold, )),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20, bottom: 10),
                      child: Text(
                        "Calm down and find a way out of the problem. Realese your stress and set them free",
                        style: GoogleFonts.exo(textStyle:TextStyle(color: RuangRehatColors.RehatBlack, fontSize: 15, fontWeight: FontWeight.normal, )),
                      ),
                    ),

                    Container(
                        child: SearchWidget()

                    ),
                    //SearchWidget()
                    // Image.asset('assets/images/login_image.png')
                  ],
                ),
              ),
            ),

            // TopMenus(),
            PopularFeatures(),
            PromoRuangRehat(),
            KontenRR(),
            FAQ(),
          ],
        ),
      ),
      // bottomNavigationBar: BottomNavBarWidget(),
    );
  }
}