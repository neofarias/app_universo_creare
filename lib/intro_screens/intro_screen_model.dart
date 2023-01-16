import 'package:flutter/material.dart';

class MyIntroScreenModel extends StatelessWidget {
  final String image;
  final String title;
  final String textContent;

  const MyIntroScreenModel({
    Key? key,
    required this.image,
    required this.title,
    required this.textContent,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 56.0),
      color: Colors.white,
      child: Center(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 48.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                image,
                width: 250.0,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: Text(
                  title,
                  style: TextStyle(
                    shadows: [
                      Shadow(
                        color: Colors.black.withOpacity(0.3),
                        offset: const Offset(4, 4),
                        blurRadius: 15,
                      ),
                    ],
                    fontSize: 18.0,
                    letterSpacing: 1.0,
                    height: 1.6,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Lato',
                    color: const Color.fromRGBO(56, 74, 101, 1.0),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 24.0,
                  left: 16.0,
                  right: 16.0,
                ),
                child: Text(
                  textContent,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    shadows: [
                      Shadow(
                        color: Colors.black.withOpacity(0.3),
                        offset: const Offset(6, 6),
                        blurRadius: 15,
                      ),
                    ],
                    fontSize: 16.0,
                    letterSpacing: 1.0,
                    height: 1.6,
                    fontFamily: 'Lato',
                    color: const Color.fromRGBO(56, 74, 101, 1.0),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
