import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:proste_bezier_curve/proste_bezier_curve.dart';
import 'package:proste_shadow_clip/proste_shadow_clip.dart';

void main() {
  runApp(MyApp());
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  SystemUiOverlayStyle style = SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
  );
  SystemChrome.setSystemUIOverlayStyle(style);
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyAppHome(),
    );
  }
}

class MyAppHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: [
          SizedBox(height: 10),
          Center(
            child: ProsteShadowClip(
              child: Container(
                width: 300,
                height: 100,
                color: Colors.pink,
              ),
              shadow: [
                BoxShadow(
                  blurRadius: 5,
                  spreadRadius: 2,
                ),
              ],
              clipper: MultipleRoundedCurveClipper(),
            ),
          ),
          SizedBox(height: 10),
          Center(
            child: ProsteShadowClip(
              child: Container(
                width: 300,
                height: 100,
                color: Colors.green,
              ),
              shadow: [
                BoxShadow(
                  blurRadius: 5,
                  spreadRadius: 2,
                ),
              ],
              clipper: MessageClipper(),
            ),
          ),
          SizedBox(height: 10),
          Center(
            child: ProsteShadowClip(
              child: Container(
                width: 300,
                height: 100,
                color: Colors.yellow,
              ),
              shadow: [
                BoxShadow(
                  blurRadius: 12,
                  spreadRadius: 5,
                ),
              ],
              clipper: ProsteBezierCurve(
                position: ClipPosition.bottom,
                list: [
                  BezierCurveSection(
                    start: Offset(0, 50),
                    end: Offset(300, 50),
                    top: Offset(150, 100),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 10),
          Center(
            child: ProsteShadowClip(
              child: Container(
                width: 300,
                height: 150,
                color: Colors.blue,
              ),
              shadow: [
                BoxShadow(
                  blurRadius: 12,
                  spreadRadius: 5,
                  offset: Offset(-10, 15),
                ),
                BoxShadow(
                  blurRadius: 12,
                  spreadRadius: 5,
                  color: Colors.red,
                  offset: Offset(10, -5),
                ),
              ],
              clipper: ProsteBezierCurve(
                position: ClipPosition.bottom,
                list: [
                  BezierCurveSection(
                    start: Offset(0, 75),
                    top: Offset(300 / 4, 100),
                    end: Offset(300 / 2, 75),
                  ),
                  BezierCurveSection(
                    start: Offset(300 / 2, 75),
                    top: Offset(300 / 4 * 3, 50),
                    end: Offset(300, 100),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
