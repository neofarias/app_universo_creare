import 'package:app_universo_creare/components/check_box_widget.dart';
import 'package:app_universo_creare/components/my_button.dart';
import 'package:app_universo_creare/components/square_tile.dart';
import 'package:app_universo_creare/components/text_field.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);

  final userNameController = TextEditingController();
  final passwordController = TextEditingController();
  final bool valueCheck = false;

  void signUserIn() {}

  @override
  Widget build(BuildContext context) {

    //double height = MediaQuery.of(context).size.height;
    //double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SizedBox(
          height: 100.h,
          width: 100.w,
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/caa.png', height: 280.0, width: 280.0),
                  const Padding(
                    padding: EdgeInsets.only(bottom: 32.0),
                    child: Text(
                      'Bem-vindo ao CAA!',
                      style: TextStyle(
                        fontFamily: 'Lato',
                        fontSize: 16.0,
                        color: Color.fromRGBO(56, 74, 101, 1.0),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 32.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: const [
                        Text(
                          'Usuário',
                          style: TextStyle(
                            fontFamily: 'Lato',
                            fontSize: 16.0,
                            color: Color.fromRGBO(56, 74, 101, 1.0),
                          ),
                        ),
                      ],
                    ),
                  ),
                  MyTextField(
                    controller: userNameController,
                    hintText: 'Digite seu nome de usuário',
                    obscureText: false,
                    icon: Icons.person,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 32.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: const [
                        Text(
                          'Senha',
                          style: TextStyle(
                            fontFamily: 'Lato',
                            fontSize: 16.0,
                            color: Color.fromRGBO(56, 74, 101, 1.0),
                          ),
                        ),
                      ],
                    ),
                  ),
                  MyTextField(
                    controller: passwordController,
                    hintText: 'Digite sua senha',
                    obscureText: true,
                    icon: Icons.lock,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        right: 32.0, bottom: 8.0, left: 32.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        CheckboxWidget(),
                        Text(
                          "Esqueci minha senha",
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                            fontFamily: 'Lato',
                            fontSize: 14.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                  MyButton(
                    textBtn: 'Autenticar Acesso',
                    onTap: signUserIn,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        right: 32.0, left: 32.0, bottom: 24.0, top: 24.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: Divider(
                            thickness: 1.5,
                            color: Colors.grey[400],
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 12.0),
                          child: Text(
                            'ou faça login com',
                            style: TextStyle(
                              fontFamily: 'Lato',
                            ),
                          ),
                        ),
                        Expanded(
                          child: Divider(
                            thickness: 1.5,
                            color: Colors.grey[400],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(right: 24.0),
                        child: SquareTile(imagePath: 'assets/google.png'),
                      ),
                      SquareTile(imagePath: 'assets/facebook.png'),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(bottom: 16.0, top: 32.0),
                        child: Text(
                          'Não tem uma conta?',
                          style: TextStyle(
                              fontFamily: 'Lato',
                              fontSize: 16.0,
                              color: Colors.black,),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 8.0,bottom: 16.0, top: 32.0),
                        child: Text(
                          'Cadastre-se',
                          style: TextStyle(
                              fontFamily: 'Lato',
                              fontSize: 16.0,
                              color: Colors.blue,
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
