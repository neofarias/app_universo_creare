import 'package:app_universo_creare/pages/login_page.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class OnBoardingPage extends StatefulWidget {
  @override
  OnBoardingPageState createState() => OnBoardingPageState();
}

class OnBoardingPageState extends State<OnBoardingPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: IntroductionScreen(
        pages: [
          PageViewModel(
            title: 'Bem-Vindo!',
            body: 'A ferramenta que auxilia o diagnóstico, finalmente chegou.',
            image: buildImage('assets/caa.png'),
            decoration: getPageDecoration(),
          ),
          PageViewModel(
            title: 'Agilidade e praticidade',
            body: 'A ferramenta que auxilia o diagnóstico, finalmente chegou.',
            image: buildImage('assets/welcome_02.png'),
            decoration: getPageDecoration(),
          ),
          PageViewModel(
            title: 'Acesso na palma da mão',
            body: 'Com seus dados de acesso você pode cadastrar, consultar ou editar dados do paciente.',
            image: buildImage('assets/welcome_01.png'),
            decoration: getPageDecoration(),
          ),
          PageViewModel(
            title: 'Vamos lá',
            body: 'Iniciar o uso do aplicativo.',
            image: buildImage('assets/welcome_03.png'),
            decoration: getPageDecoration(),
          ),
        ],
        skip: Text('Pular'),
        onSkip: () {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => LoginPage()),
          );
        },

        next: Text('Próximo'),

        done: Text('Iniciar'),
        onDone: () {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => LoginPage()),
          );
        },

        showSkipButton: true,
        showNextButton: true,
      ),
    );
  }
}

Widget buildImage(String path) {
  return Center(
    child: Image.asset(path, width: 290),
  );
}

PageDecoration getPageDecoration() {
  return PageDecoration(
    titlePadding: const EdgeInsets.only(bottom: 8.0),
    bodyPadding: const EdgeInsets.all(8.0),
    imagePadding: const EdgeInsets.only(top: 120.0),
    pageColor: Colors.white,
    titleTextStyle: TextStyle(
      fontFamily: 'Lato',
      fontSize: 28,
      fontWeight: FontWeight.bold,
      color: const Color.fromRGBO(56, 74, 101, 1.0),
      shadows: [
        Shadow(
          color: Colors.black.withOpacity(0.3),
          offset: const Offset(6, 6),
          blurRadius: 15,
        ),
      ],
    ),
    bodyTextStyle: TextStyle(
      fontFamily: 'Lato',
      fontSize: 20,
      color: const Color.fromRGBO(56, 74, 101, 1.0),
      shadows: [
        Shadow(
          color: Colors.black.withOpacity(0.3),
          offset: const Offset(6, 6),
          blurRadius: 15,
        ),
      ],
    ),
  );
}

/*

Scaffold(
      body: PageView(
        children: [
          Container(
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset('assets/caa.png'),
                ),
                Text("Bem-vindo(a)!",
                style: TextStyle(
                    shadows: [
                      Shadow(
                          color: Colors.black.withOpacity(0.3),
                          offset: const Offset(6, 6),
                          blurRadius: 15,
                      ),
                    ],
                    fontSize: 24.0,
                    letterSpacing: 1.0,
                    height: 1.6,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Lato',
                    color: const Color.fromRGBO(56, 74, 101, 1.0),
                ),
                textAlign: TextAlign.center,
              ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text("A ferramenta que auxilia o diagnóstico, finalmente chegou.",
                    style: TextStyle(
                      shadows: [
                        Shadow(
                          color: Colors.black.withOpacity(0.3),
                          offset: const Offset(6, 6),
                          blurRadius: 15,
                        ),
                      ],
                        fontSize: 20.0,
                        letterSpacing: 1.0,
                        height: 1.6,
                        fontFamily: 'Lato',
                        color: const Color.fromRGBO(56, 74, 101, 1.0),
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                ElevatedButton(
                  style: raisedButtonStyle,
                  onPressed: () { },
                  child: Text('Pular intro'),
                ),
              ],
            ),
          ),
          Container(
            color: Colors.blue,
            child: Center(child: Text("Page 2"),
            ),
          ),
          Container(
            color: Colors.green,
            child: Center(child: Text("Page 3"),
            ),
          ),
        ],
      ),
    )

 */

final ButtonStyle raisedButtonStyle = ElevatedButton.styleFrom(
  foregroundColor: Colors.black87,
  backgroundColor: Colors.grey[300],
  minimumSize: const Size(88, 36),
  padding: const EdgeInsets.symmetric(horizontal: 16),
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(2)),
  ),
);
