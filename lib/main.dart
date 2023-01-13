import 'package:app_universo_creare/pages/login_page.dart';
import 'package:app_universo_creare/pages/on_boarding_page_state.dart';
import 'package:app_universo_creare/pages/splash_screen.dart';
import 'package:flutter/material.dart';

var routes = <String, WidgetBuilder>{
  "/login": (BuildContext context) => LoginPage(),
  "/intro": (BuildContext context) => OnBoardingPage(),
};

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(primaryColor: Colors.red),
        debugShowCheckedModeBanner: false,
        home: SplashScreen(),
        routes: routes
    );
  }

}