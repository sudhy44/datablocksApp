import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';

import './home.dart';

class Splash extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new SplashScreen(
        seconds: 14,
        navigateAfterSeconds: new Home(),
        title: new Text('Welcome to databricks !'),
        image: new Image.network('https://upload.wikimedia.org/wikipedia/commons/6/63/Databricks_Logo.png'),
        backgroundColor: Colors.white,
        styleTextUnderTheLoader: new TextStyle(),
        photoSize: 100.0,
        loaderColor: Colors.red);
  }
}
