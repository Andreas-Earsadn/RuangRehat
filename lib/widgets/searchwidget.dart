import 'package:flutter/material.dart';
import 'package:login_example/model/colorpallete.dart';

class SearchWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 10,top: 5,right: 10,bottom: 5),
      child: TextField(

        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(20.0)),
            borderSide: BorderSide(
              width: 0,
              color: RuangRehatColors.RehatPrimary,
              style: BorderStyle.none,
            ),
          ),
          filled: true,
          prefixIcon: Icon(
            Icons.search,
            color: RuangRehatColors.RehatSecondaryLight,
          ),
          fillColor: Color(0xFFFAFAFA),
          suffixIcon: Icon(Icons.arrow_circle_right_rounded,color: RuangRehatColors.RehatSecondaryLight, size: 35,),
          hintStyle: new TextStyle(color: Color(0xFFd0cece), fontSize: 15),
          hintText: "Find the features that you need",
        ),
      ),
    );
  }
}