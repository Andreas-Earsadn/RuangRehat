import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../model/colorpallete.dart';


class KontenRR extends StatefulWidget {
  @override
  _KontenRRState createState() => _KontenRRState();
}

class _KontenRRState extends State<KontenRR> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220,
      width: double.infinity,
      child: Column(
        children: <Widget>[
          KontenRRTitle(),
          Expanded(
            child: KontenRRItems(),
          )
        ],
      ),
    );
  }
}

class KontenRRTiles extends StatelessWidget {
  String title;
  String imagepath;
  String rating;
  String description;


  KontenRRTiles(
      {Key? key,
        required this.title,
        required this.imagepath,
        required this.rating,
        required this.description,
        })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // Navigator.push(context, ScaleRoute(page: FoodDetailsPage()));
      },
      child: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(left: 10, right: 5, top: 5, bottom: 5),
            decoration: BoxDecoration(boxShadow: [
              /* BoxShadow(
                color: Color(0xFFfae3e2),
                blurRadius: 15.0,
                offset: Offset(0, 0.75),
              ),*/
            ]),
            child: Card(
                color: Colors.white,
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(5.0),
                  ),
                ),
                child: Container(
                  width: 170,
                  height: 150,
                  child: Column(
                    children: <Widget>[

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[

                          Container(

                            padding: EdgeInsets.only(left: 5, top: 5),
                            child: Image.asset(
                              imagepath,
                              fit: BoxFit.fitWidth,
                            ),
                          ),


                        ],
                      ),
                      Container(
                        alignment: Alignment.bottomCenter,

                        padding: EdgeInsets.only(left: 5, right: 5),
                        child: Expanded(
                          child: Text(
                            title,
                            style: GoogleFonts.poppins(textStyle:TextStyle(color: RuangRehatColors.RehatBlack, fontSize: 12, fontWeight: FontWeight.bold, )),
                          ),
                        ),
                      ),

                    ],
                  ),
                )),
          ),
        ],
      ),
    );
  }
}

class KontenRRTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left:10.0),
            child: Text(
              "Konten Rehat",
              style: GoogleFonts.poppins(textStyle:TextStyle(color: RuangRehatColors.RehatBlack, fontSize: 15, fontWeight: FontWeight.bold, )),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Text(
              "See all",
              style: GoogleFonts.poppins(textStyle:TextStyle(color: Colors.blue, fontSize: 13, fontWeight: FontWeight.normal, )),
            ),
          )
        ],
      ),
    );
  }
}

class KontenRRItems extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        KontenRRTiles(
          title: 'Various Kinds of Mental Health Problems',
          description: '',
          imagepath: 'assets/images/kontenRR1.png',
          rating: '',),

        KontenRRTiles(
          title: 'The Definition of Mental Disorder',
          description: '',
          imagepath: 'assets/images/konten2.png',
          rating: '',),

        KontenRRTiles(
          title: 'Various Kinds of Mental Health Problems',
          description: '',
          imagepath: 'assets/images/kontenRR1.png',
          rating: '',),

        KontenRRTiles(
          title: 'The Definition of Mental Disorder',
          description: '',
          imagepath: 'assets/images/konten2.png',
          rating: '',),

        
      ],
    );
  }
}

