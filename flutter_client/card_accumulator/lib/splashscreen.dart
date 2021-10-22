// ignore_for_file: prefer_const_constructors
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:card_accumulator/home.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

final Shader linearGradient = LinearGradient(
  colors: const <Color>[Colors.white ,Colors.white,Colors.white],
).createShader(
  Rect.fromLTWH(0.0, 0.0, 200.0, 70.0),
);


class MySplash extends StatefulWidget {
  const MySplash({Key? key}) : super(key: key);

  @override
  _MySplashState createState() => _MySplashState();
}

class _MySplashState extends State<MySplash> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SplashScreen(
            seconds: 3,
            //navigateAfterSeconds: HomeScreenState(),
            title: Text(
              'CARDKEEP',
              style: GoogleFonts.sora(
                fontSize: 38,
                fontWeight: FontWeight.w900,
                color: Colors.white
              )
            ),
            gradientBackground: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              // ignore: prefer_const_literals_to_create_immutables
              colors: [
                Color(0xFF4A148C),
                Color(0xFF6A1B9A),
                Color(0xFF7B1FA2),
                Color(0xFF8E24AA),
              ],
            ),
            useLoader: false,
          ),
          Center(
            child: SpinKitCubeGrid(color: Colors.white54,
            size: 31.0,
            duration: const Duration(milliseconds: 700),
            ),
          )
        ],
      ),
      
    );
  }
}
