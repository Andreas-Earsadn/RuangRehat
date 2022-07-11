import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../model/colorpallete.dart';

class FAQ extends StatefulWidget {
  @override
  _FAQState createState() => _FAQState();
}

class _FAQState extends State<FAQ> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: double.infinity,
      child: Column(
        children: <Widget>[
          FAQTitle(),
          Expanded(
            child: FAQTiles(),
          )
        ],
      ),
    );
  }
}

class FAQTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 20, right: 10, top: 5, bottom: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            "Frequently Asked Questions",
            style: GoogleFonts.poppins(
                textStyle: TextStyle(
              color: RuangRehatColors.RehatBlack,
              fontSize: 15,
              fontWeight: FontWeight.bold,
            )),
          ),
        ],
      ),
    );
  }
}

class FAQTiles extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Column(
        children: <Widget>[
          Container(
              // width: 330,
              height: 80,
              padding: EdgeInsets.only(left: 10, right: 5, top: 5, bottom: 5),
              decoration: BoxDecoration(boxShadow: [
                /* BoxShadow(
                color: Color(0xFFfae3e2),
                blurRadius: 15.0,
                offset: Offset(0, 0.75),
              ),*/
              ]),
              child: Card(
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(35.0),
                  ),
                ),
                color: RuangRehatColors.RehatSecondaryLight,
                child: Padding(
                  padding: EdgeInsets.only(
                      top: 0.0, left: 6.0, right: 0.0, bottom: 2.0),
                  child: ExpansionTile(
                    title: Text(
                      'Bagaimana menggunakan fitur rekomendasi?',
                      style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                        color: RuangRehatColors.RehatBlack,
                        fontSize: 11.5,
                        fontWeight: FontWeight.normal,
                      )),
                    ),
                    children: <Widget>[
                      Text(
                          'Buka navigasi menu dan lakukan psikotes terlebih dahulu'),
                      // Text('Bagaimana melakukan journaling?'),
                      // Text('Siapa yang menjadi teman curhat saya?'),
                    ],
                  ),
                ),
              )),
          Container(
              // width: 330,
              height: 80,
              padding: EdgeInsets.only(left: 10, right: 5, top: 5, bottom: 5),
              decoration: BoxDecoration(boxShadow: [
                /* BoxShadow(
                color: Color(0xFFfae3e2),
                blurRadius: 15.0,
                offset: Offset(0, 0.75),
              ),*/
              ]),
              child: Card(
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(35.0),
                  ),
                ),
                color: RuangRehatColors.RehatSecondaryLight,
                child: Padding(
                  padding: EdgeInsets.only(
                      top: 0.0, left: 6.0, right: 0.0, bottom: 2.0),
                  child: ExpansionTile(
                    title: Text(
                      'Siapa teman curhat saya?',
                      style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                        color: RuangRehatColors.RehatBlack,
                        fontSize: 11.5,
                        fontWeight: FontWeight.normal,
                      )),
                    ),
                    children: <Widget>[
                      Text('Admin Ruang Rehat'),
                      // Text('Bagaimana melakukan journaling?'),
                      // Text('Siapa yang menjadi teman curhat saya?'),
                    ],
                  ),
                ),
              )),
          Container(
              // width: 330,
              height: 80,
              padding: EdgeInsets.only(left: 10, right: 5, top: 5, bottom: 5),
              decoration: BoxDecoration(boxShadow: [
                /* BoxShadow(
                color: Color(0xFFfae3e2),
                blurRadius: 15.0,
                offset: Offset(0, 0.75),
              ),*/
              ]),
              child: Card(
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(35.0),
                  ),
                ),
                color: RuangRehatColors.RehatSecondaryLight,
                child: Padding(
                  padding: EdgeInsets.only(
                      top: 0.0, left: 6.0, right: 0.0, bottom: 2.0),
                  child: ExpansionTile(
                    title: Text(
                      'Bagaimana melakukan journaling?',
                      style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                        color: RuangRehatColors.RehatBlack,
                        fontSize: 11.5,
                        fontWeight: FontWeight.normal,
                      )),
                    ),
                    children: <Widget>[
                      Text('Buka navigasi menu dan pilih fitur journaling'),
                      // Text('Bagaimana melakukan journaling?'),
                      // Text('Siapa yang menjadi teman curhat saya?'),
                    ],
                  ),
                ),
              )),
          Padding(
              padding: const EdgeInsets.all(20),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: new BorderRadius.circular(20.0),
                    gradient: LinearGradient(
                        colors: [RuangRehatColors.RehatBlack, Colors.grey])),
                child: MaterialButton(
                  height: 15,
                  // minWidth: double.infinity,
                  // color: Colors.deepOrange,
                  shape: RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(20.0)),
                  onPressed: () {
                    Navigator.of(context).pushNamed("/HomePage");
                  },
                  child: Text(
                    "Lihat Selengkapnya",
                    style: TextStyle(fontSize: 13, color: Colors.white),
                  ),
                ),
              )),
          Container(
            height: 200,
            width: double.infinity,
            child: Column(
              children: <Widget>[
                HubungiKamiTitle(),
                Expanded(
                  child: HubungiKamiTiles(),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class HubungiKamiTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Text(
              "Hubungi Kami",
              style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                color: RuangRehatColors.RehatBlack,
                fontSize: 15,
                fontWeight: FontWeight.bold,
              )),
            ),
          ),
        ],
      ),
    );
  }
}

class HubungiKamiTiles extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Column(
        children: <Widget>[
          Container(
            width: 530,
            height: 250,
            padding: EdgeInsets.only(left: 10, right: 5, top: 5, bottom: 5),
            decoration: BoxDecoration(boxShadow: [
              /* BoxShadow(
                color: Color(0xFFfae3e2),
                blurRadius: 15.0,
                offset: Offset(0, 0.75),
              ),*/
            ]),
            child: Card(
              color: RuangRehatColors.RehatSecondaryLight,
              semanticContainer: true,
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    alignment: Alignment.topLeft,
                    child: Image.asset('assets/images/bottomcardtopright.png'),
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Expanded(
                            child: Text(
                              'Kebingungan dalam menggunakan \nRuang Rehat',
                              style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                color: RuangRehatColors.RehatBlack,
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              )),
                            ),
                          ),
                        ),



                      ],
                    ),
                  ),

                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: Text(
                            'Kamu dapat menghubungi kami kapanpun',
                            style: GoogleFonts.exo(
                                textStyle: TextStyle(
                                  color: RuangRehatColors.RehatBlack,
                                  fontSize: 12,
                                  fontWeight: FontWeight.normal,
                                )),
                          ),
                        ),

                      ],
                    ),
                  ),
                  Container(
                    alignment: Alignment.bottomRight,
                    child: Image.asset(
                        'assets/images/bottomcardtopleft.png'),
                  ),

                ],


              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              elevation: 1,
              margin: EdgeInsets.all(5),
            ),
          ),
        ],
      ),
    );
  }
}
