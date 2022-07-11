import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../model/colorpallete.dart';

class PromoRuangRehat extends StatefulWidget {
  @override
  _PromoRuangRehatState createState() => _PromoRuangRehatState();
}

class _PromoRuangRehatState extends State<PromoRuangRehat> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: double.infinity,
      child: Column(
        children: <Widget>[
          PromoRRTitle(),
          Expanded(
            child: PromoRRList(),
          )
        ],
      ),
    );
  }
}

class PromoRRTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 20, right: 10, top: 5, bottom: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            "Keuntungan Ruang Rehat",
            style: GoogleFonts.poppins(textStyle:TextStyle(color: RuangRehatColors.RehatBlack, fontSize: 15, fontWeight: FontWeight.bold, )),
          ),
        ],
      ),
    );
  }
}

class PromoRRTiles extends StatelessWidget {
  String title;
  String description;
  String imagepath;


  PromoRRTiles(
      {Key? key,
        required this.title,
        required this.description,
        required this.imagepath,
        })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Column(

        children: <Widget>[
          Container(
            width: 330,
            height: 160,
            padding: EdgeInsets.only(left: 10, right: 5, top: 5, bottom: 5),
            decoration: BoxDecoration(boxShadow: [
              /* BoxShadow(
                color: Color(0xFFfae3e2),
                blurRadius: 15.0,
                offset: Offset(0, 0.75),
              ),*/
            ]
            ),

            child: Card(
              color: RuangRehatColors.RehatSecondaryLight,
              semanticContainer: true,
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    //alignment: Alignment.topLeft,
                    child: Image.asset(
                        imagepath
                    ),

                  ),
                  Container(
                    child: Expanded(
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Text(
                             title,
                              style: GoogleFonts.poppins(textStyle:TextStyle(color: RuangRehatColors.RehatBlack, fontSize: 15, fontWeight: FontWeight.bold, )),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(3.0),
                            child: Text(
                              description,
                              style: GoogleFonts.exo(textStyle:TextStyle(color: RuangRehatColors.RehatBlack, fontSize: 12, fontWeight: FontWeight.normal, )),
                            ),
                          ),
                          Container(
                                child: Text(
                                  'Lihat Selengkapnya',
                                  style: GoogleFonts.exo(textStyle:TextStyle(backgroundColor:RuangRehatColors.RehatBlack,color: RuangRehatColors.RehatWhite, fontSize: 12, fontWeight: FontWeight.normal, )),

                            ),

                          ),
                        ],
                      ),
                    ),
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

class PromoRRList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        PromoRRTiles(
        title: 'Free Psikotes & Rekomendasi',
          description: 'Kamu dapat mengakses psikotes dan menemukan rekomendasi yang tepat',
          imagepath: 'assets/images/keuntunganRR.png',
        ),

        PromoRRTiles(
          title: 'Free Psikotes & Rekomendasi',
          description: 'Kamu dapat mengakses psikotes dan menemukan rekomendasi yang tepat',
          imagepath: 'assets/images/keuntunganRR.png',
        ),

        PromoRRTiles(
          title: 'Free Psikotes & Rekomendasi',
          description: 'Kamu dapat mengakses psikotes dan menemukan rekomendasi yang tepat',
          imagepath: 'assets/images/keuntunganRR.png',
        ),

      ],
    );
  }
}