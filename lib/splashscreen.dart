import 'dart:async';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

const TextStyle textStyle = TextStyle(
  color: Colors.black,
);

class _SplashScreenState extends State<SplashScreen> {
  final background = Container(
    decoration: BoxDecoration(
      image: DecorationImage(
        image: AssetImage('assets/images/backg.jpg'),
        fit: BoxFit.cover,
      ),
    ),
  );

  final greenOpacity = Container(
    color: Color(0xFF9E9E9E),
  );

  final logo = Image.asset(
    'assets/images/log.png',
    width: 180.0,
    height: 180.0,
  );

  final description = Text(
    'Gardons notre ville propre',
    textAlign: TextAlign.center,
    style: textStyle.copyWith(fontSize: 24.0),
  );

  @override
  void initState() {
    
    super.initState();
    Timer(Duration(seconds: 5), () => Navigator.pushNamed(context, "/login"));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(fit: StackFit.expand, children: <Widget>[
        background,
        greenOpacity,
        new SafeArea(
          child: new Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                logo,
                SizedBox(
                  height: 30.0,
                ),
                description,
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
