import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {

  final Function()? onTap;
  final String textBtn;

  const MyButton({Key? key, required this.onTap, required this.textBtn}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(18.0),
        margin: EdgeInsets.symmetric(horizontal: 54.0),
        decoration: BoxDecoration(
            color: Color.fromRGBO(54, 0, 80, 0.7),
            borderRadius: BorderRadius.circular(25.0)),
        child: Center(
          child: Text(textBtn,
            style: const TextStyle(
                fontFamily: 'Lato',
                color: Colors.white,
                fontSize: 16.0,
                fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
