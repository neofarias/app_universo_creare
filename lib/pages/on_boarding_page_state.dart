import 'package:app_universo_creare/intro_screens/intro_screen_model.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'login_page.dart';

class OnBoardingPage extends StatefulWidget {
  @override
  OnBoardingPageState createState() => OnBoardingPageState();
}

class OnBoardingPageState extends State<OnBoardingPage> {
  PageController _controllerPageIndicator = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _controllerPageIndicator,
            children: const [
              MyIntroScreenModel(
                image: 'assets/caa.png',
                title: 'Bem-vindo(a)!',
                textContent: 'A ferramenta que auxilia o diagnóstico, finalmente chegou.',
              ),
              MyIntroScreenModel(
                image: 'assets/welcome_01.png',
                title: 'Agilidade e praticidade',
                textContent: 'A ferramenta que auxilia o diagnóstico, finalmente chegou.',
              ),
              MyIntroScreenModel(
                image: 'assets/welcome_02.png',
                title: 'Acesso na palma da mão',
                textContent: 'Com seus dados de acesso você pode cadastrar, consultar ou editar dados do paciente.',
              ),
              MyIntroScreenModel(
                image: 'assets/welcome_03.png',
                title: 'Vamos lá',
                textContent: 'Iniciar o uso do aplicativo.',
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SmoothPageIndicator(
                controller: _controllerPageIndicator,
                count: 4,
                effect: const ExpandingDotsEffect(
                  expansionFactor: 2.5,
                  dotHeight: 16.0,
                  dotWidth: 16.0,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 32.0, bottom: 62.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (context) => LoginPage()),
                        );
                      },
                      child: Container(
                        padding: const EdgeInsets.only(
                            left: 32.0, right: 48.0, bottom: 16.0, top: 16.0),
                        decoration: const BoxDecoration(
                          color: Color.fromRGBO(54, 0, 80, 0.2),
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(25.0),
                            bottomRight: Radius.circular(25.0),
                          ),
                        ),
                        child: const Center(
                          child: Text(
                            'Pular',
                            style: TextStyle(
                                fontFamily: 'Lato',
                                color: Colors.black,
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        padding: const EdgeInsets.only(
                            left: 40.0, right: 24.0, bottom: 16.0, top: 16.0),
                        decoration: const BoxDecoration(
                          color: Color.fromRGBO(54, 0, 80, 0.7),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(25.0),
                            bottomLeft: Radius.circular(25.0),
                          ),
                        ),
                        child: const Center(
                          child: Text(
                            'Próximo',
                            style: TextStyle(
                                fontFamily: 'Lato',
                                color: Colors.white,
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

/*
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


IntroductionScreen(
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
      )


 */
