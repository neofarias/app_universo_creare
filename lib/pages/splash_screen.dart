import 'dart:async';

import 'package:app_universo_creare/pages/on_boarding_page_state.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  SplashScreenState createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen> with TickerProviderStateMixin {

  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    setdata(context);
    //Timer(const Duration(seconds: 4), () => AppNavigator.goToIntro(context) );

    _controller = AnimationController(
      duration: const Duration(seconds: 3),
      vsync: this,
    );

    _animation = CurvedAnimation(
        parent: _controller,
        curve: Curves.easeIn
    );

    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(color: Colors.white),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Expanded(
                flex: 2,
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(bottom: 24.0),
                        child: FadeTransition(
                          opacity: _animation,
                          child: Image.asset('assets/caa.png'),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 24.0),
                        child: FadeTransition(
                          opacity: _animation,
                          child: const Text(
                            "Desenvolvido por:",
                            style: TextStyle(
                            color: Colors.black,
                            fontSize: 16.0),
                            ),

                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 24.0),
                        child: FadeTransition(
                          opacity: _animation,
                          child: const Text(
                            "Universo Creare",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 16.0),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

setdata(BuildContext context) async {
  await Future.delayed(const Duration(seconds: 5), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => OnBoardingPage()),
      );
  });
}