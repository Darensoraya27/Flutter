import 'package:app/login.dart';
import 'package:flutter/material.dart';
import 'splashscreen.dart';
import 'menu.dart';

var routes=<String,WidgetBuilder>{
  '/login': (BuildContext context)=> Login(),
  '/menu': (BuildContext context)=> Menu(),
};
void main() => runApp(MaterialApp(
  title: 'Trash',
  theme: ThemeData(
        primaryColor: new Color(0xff622F74),
        accentColor: Colors.orange
  ),
  debugShowCheckedModeBanner: false,
  home: SplashScreen(),
  routes: routes,
));

