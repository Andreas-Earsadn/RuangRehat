import 'package:flutter/material.dart';
import 'package:flutter_auth_buttons/flutter_auth_buttons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_example/model/colorpallete.dart';

bool _value = false;

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: RuangRehatColors.RehatWhite,
      child: Container(
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height/4,
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage('assets/images/header_login_register.png'),
                  alignment: Alignment.topRight,
                  fit: BoxFit.contain)
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Image.asset('assets/images/login_image.png')
                    ],
                  ),
                ),
              ),




            Padding(
              padding: const EdgeInsets.fromLTRB(20, 10, 0, 5),
              child: Row(children: <Widget>[
                Text(
                  "Sign In",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.normal),
                )
              ]
              ),
            ),

            Padding(
              padding: const EdgeInsets.fromLTRB(20, 10, 0, 15),
              child: Row(children: <Widget>[
                Text(
                  "Hi, There! Nice to see you again",
                  style: GoogleFonts.poppins(textStyle:TextStyle(color: Colors.grey, fontSize: 13, fontWeight: FontWeight.normal, )),
                )
              ]
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextField(
                obscureText: false,
                decoration: new InputDecoration(
                  focusedBorder: new OutlineInputBorder(
                    borderSide: new BorderSide(color: RuangRehatColors.RehatPrimary, width: 2),
                    borderRadius: const BorderRadius.all(
                      const Radius.circular(20.0),
                    ),
                  ),
                  enabledBorder: new OutlineInputBorder(
                    borderSide:
                        new BorderSide(color: Color(0x80EFEFEF), width: 2),
                    borderRadius: const BorderRadius.all(
                      const Radius.circular(20.0),
                    ),
                  ),
                  filled: true,
                  hintStyle: new TextStyle(color: Color(0x75000000)),
                  hintText: "Email Adreess",
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: TextField(
                obscureText: true,
                decoration: new InputDecoration(
                  focusedBorder: new OutlineInputBorder(
                    borderSide:
                        new BorderSide(color: RuangRehatColors.RehatSecondaryLight, width: 2),
                    borderRadius: const BorderRadius.all(
                      const Radius.circular(20.0),
                    ),
                  ),
                  enabledBorder: new OutlineInputBorder(
                    borderSide:
                        new BorderSide(color: Color(0x80EFEFEF), width: 2),
                    borderRadius: const BorderRadius.all(
                      const Radius.circular(20.0),
                    ),
                  ),
                  filled: true,
                  hintStyle: new TextStyle(color: Color(0x75000000)),
                  hintText: "Password",
                ),
              ),
            ),
            // Padding(
            //   padding: const EdgeInsets.symmetric(horizontal: 10),
            //   child: Row(
            //     children: <Widget>[
            //       Checkbox(
            //         value: _value,
            //         checkColor: Color(0xFFFFFFFF),
            //         activeColor: Colors.deepOrange,
            //         onChanged: (value) {
            //           setState(() {
            //             _value = value!;
            //           });
            //         },
            //
            //       ),
            //       Text(
            //         "Stay Logged In",
            //         style: TextStyle(
            //             color: Color(0x50212121), fontWeight: FontWeight.w300),
            //       ),
            //       Padding(
            //         padding: const EdgeInsets.only(left: 40),
            //         child: new GestureDetector(
            //           onTap: () {
            //             Navigator.pushNamed(context, "/UserPage");
            //           },
            //           child: new Text(
            //             "Forgot Your Password?",
            //             style: TextStyle(
            //                 color: Color(0x50212121),
            //                 fontWeight: FontWeight.w300),
            //           ),
            //         ),
            //       ),
            //     ],
            //   ),
            // ),
            Padding(
                padding: const EdgeInsets.all(20),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: new BorderRadius.circular(20.0),
                    gradient: LinearGradient(colors: [RuangRehatColors.RehatSecondaryLight, RuangRehatColors.RehatLightColor])
                  ),
                  child: MaterialButton(
                    height: 56,
                    minWidth: double.infinity,
                    // color: Colors.deepOrange,
                    shape: RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(20.0)),
                    onPressed: () {
                      Navigator.of(context).pushNamed("/HomePage");
                    },
                    child: Text(
                      "Login",
                      style: TextStyle(fontSize: 15, color: Colors.white),
                    ),
                  ),
                )),

            Padding(
              padding: const EdgeInsets.all(10),
              child:  Center(
                  child: Text(
                    "Forgot Password?",
                    style: GoogleFonts.exo(textStyle:TextStyle(color: Colors.blue, fontSize: 13, fontWeight: FontWeight.normal, )),
                  )
              ),
            ),

            Padding(
                padding: const EdgeInsets.all(10),
                child:  Center(
                  child: Text(
                      "Or",
                      style: TextStyle(fontSize: 15, color: Colors.grey),
                    ),
                ),
                ),

             Padding(
               padding: const EdgeInsets.only(left: 20,right: 20),
               child: Container(
                    height: 56,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: new BorderRadius.circular(30.0),
                    ),
                    child: FacebookSignInButton(
                        text:'Login With Facebook',
                        textStyle: GoogleFonts.exo(textStyle:TextStyle(color: RuangRehatColors.RehatWhite, fontSize: 16, fontWeight: FontWeight.normal,  )),
                        borderRadius: 30.0,
                        onPressed: () {
                          // call authentication logic
                        }),
                  ),
             ),

            Padding(
              padding: const EdgeInsets.only(left: 20,right: 20, top: 10),
              child: Container(
                // color: RuangRehatColors.RehatBlack,
                height: 56,
                width: double.infinity,
                decoration: BoxDecoration(
                  // color: RuangRehatColors.RehatBlack,
                  borderRadius: new BorderRadius.circular(30.0),
                ),
                child: GoogleSignInButton(
                  splashColor: RuangRehatColors.RehatBlack,
                    text:'Login With Google',
                    textStyle: GoogleFonts.exo(textStyle:TextStyle(color: RuangRehatColors.RehatBlack, fontSize: 16, fontWeight: FontWeight.normal,  )),
                    borderRadius: 30.0,
                    onPressed: () {
                      // call authentication logic
                    }),
              ),
            ),
            // Padding(
            //     padding: const EdgeInsets.all(20),
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.center,
            //     children: <Widget> [
            //       FacebookSignInButton(
            //         text:'Facebook',
            //           borderRadius: 10.0,
            //           onPressed: () {
            //         // call authentication logic
            //       }),
            //     SizedBox(
            //       width: 20,
            //     ),
            //       // GoogleSignInButton(
            //       //   onPressed: () {/* ... */},
            //       //   darkMode: true, // default: false
            //       // ),
            //
            //       TwitterSignInButton(
            //         text: 'Twitter',
            //         onPressed: () {},
            //         borderRadius: 10.0,
            //       )
            //     ],
            //   ),
            //
            //
            //
            //     ),
            Padding(
              padding: const EdgeInsets.all(1),
              child:  Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  Text(
                    "Don't have an account?",
                    style: GoogleFonts.poppins(textStyle:TextStyle(color: RuangRehatColors.RehatBlack, fontSize: 13, fontWeight: FontWeight.normal, )),
                  ),

                  TextButton(
                    onPressed: () {Navigator.of(context).pushNamed("/RegisterPage");},
                    child: Text(
                      "Register",
                      style: TextStyle(fontSize: 15, color: Colors.blue),

                    ),
                  ),
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
