import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../model/colorpallete.dart';


class PopularFeatures extends StatefulWidget {
  @override
  _PopularFeaturesWidgetState createState() => _PopularFeaturesWidgetState();
}

class _PopularFeaturesWidgetState extends State<PopularFeatures> {
  @override
  Widget build(BuildContext context) {
     return Container(
    height: 465,
    width: double.infinity,
    child: Column(
    children: <Widget>[
        PopularFeatureTitle(),
    Expanded(
    child: PopularFeatureItems(),
    ),
      Expanded(
        child: PopularFeatureItems2(),
      )
    ],
    ),
    );


  }
}

class PopularFeatureTiles extends StatelessWidget {
  String featurename;
  String imagepath;
  String description;
  bool selected = false;

  PopularFeatureTiles(
      {Key? key,
        required this.featurename,
        required this.imagepath,
        required this.description,
        })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      hoverColor: RuangRehatColors.RehatSecondaryLight,
      borderRadius: const BorderRadius.all(
        Radius.circular(25.0),
      ),
      onTap: () {
        // Navigator.push(context, ScaleRoute(page: namaclass()));
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
            child: GestureDetector(

              child: Card(
                color: Colors.transparent,

                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(5.0),
                    ),
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(
                        const Radius.circular(20.0),
                      ),
                      gradient: LinearGradient(
                          colors: [
                           RuangRehatColors.RehatSecondaryLight.withAlpha(50),
                            RuangRehatColors.RehatLightColor.withOpacity(1.0),
                          ],
                          begin: const FractionalOffset(0.0, 0.0),
                          end: const FractionalOffset(1.0, 0.0),
                          stops: [0.0, 1.0],
                          tileMode: TileMode.clamp),
                    ),
                    width: 170,
                    height: 180,
                    child: Column(
                      children: <Widget>[
                        Stack(
                          children: <Widget>[
                            Align(
                              alignment: Alignment.topRight,
                              child: Container(
                                alignment: Alignment.topRight,
                                width: double.infinity,
                                padding: EdgeInsets.only(right: 5, top: 5),
                                child: Container(
                                  height: 38,
                                  width: 38,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: RuangRehatColors.RehatWhite,
                                      boxShadow: [
                                        BoxShadow(
                                          color: Color(0xFFfae3e2),
                                          blurRadius: 25.0,
                                          offset: Offset(0.0, 0.75),
                                        ),
                                      ]),
                                  child: ImageIcon(
                                    AssetImage('assets/images/splash.png'),
                                    color: RuangRehatColors.RehatPrimary,
                                    size: 26,
                                  ),
                                ),
                              ),
                            ),

                          ],
                        ),

                        Container(
                          //height: MediaQuery.of(context).size.height/4,
                          decoration: BoxDecoration(
                              //image: DecorationImage(image: AssetImage(imagepath),
                                   //alignment: Alignment.topRight,
                                 // fit: BoxFit.contain)
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Image.asset(imagepath)
                              ],
                            ),
                          ),
                        ),


                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Container(
                              alignment: Alignment.bottomLeft,
                              padding: EdgeInsets.only(left: 5, top: 5),
                                child : Text(
                                  featurename,
                                  style: GoogleFonts.exo(textStyle:TextStyle(color: RuangRehatColors.RehatBlack, fontSize: 15, fontWeight: FontWeight.bold, )),
                                ),
                            ),
                            Container(
                              // alignment: Alignment.topRight,
                              padding: EdgeInsets.only(right: 5),
                              child: Container(
                                // height: 28,
                                // width: 28,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: RuangRehatColors.RehatWhite,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Color(0xFFfae3e2),
                                        blurRadius: 25.0,
                                        offset: Offset(0.0, 0.75),
                                      ),
                                    ]),

                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                Container(
                                  alignment: Alignment.topLeft,
                                  padding: EdgeInsets.only(left: 5, top: 5),
                                  child: Text(description,
                                      style: TextStyle(
                                          color: Color(0xFF6e6e71),
                                          fontSize: 10,
                                          fontWeight: FontWeight.w400)),
                                ),
                                Divider(indent:16, thickness: 20,color:
                                  RuangRehatColors.RehatWhite,),



                              ],
                            ),

                          ],
                        )
                      ],
                    ),
                  )),
            ),
          ),
        ],
      ),
    );
  }
}

class PopularFeatureTitle extends StatelessWidget {
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
        "Popular Features",
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

class PopularFeatureItems extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return ListView(
      scrollDirection: Axis.horizontal,
      physics: NeverScrollableScrollPhysics(),
      children: <Widget>[
        PopularFeatureTiles(
          featurename: "Ruang Psikotes",
          imagepath: "assets/images/fiturpsikotes.png",
          description: "With all technology",),
        PopularFeatureTiles(
          featurename: "Ruang Rekomendasi",
          imagepath: "assets/images/fiturrekomendasi.png",
          description: "With all technology",),


      ],);



  }


}
class PopularFeatureItems2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      physics: NeverScrollableScrollPhysics(),
      children: <Widget>[

        PopularFeatureTiles(
          featurename: "Ruang Curhat",
          imagepath: "assets/images/fiturcurhat.png",
          description: "With all technology",),
        PopularFeatureTiles(
          featurename: "Ruang Mindfullness",
          imagepath: "assets/images/fiturmindfullness.png",
          description: "With all technology",),

      ],);
  }
}