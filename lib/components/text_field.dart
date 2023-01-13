import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final controller;
  final String hintText;
  final bool obscureText;
  final IconData icon;

  const MyTextField(
      {Key? key,
      required this.controller,
      required this.hintText,
      required this.obscureText,
      required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32.0, vertical: 6.0),
      child: TextField(

        controller: controller,
        obscureText: obscureText,
        decoration: InputDecoration(
            prefixIcon: Icon(icon),
            contentPadding: const EdgeInsets.all(20.0),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16.0),
              borderSide: BorderSide(color: Colors.grey.shade400),
            ),
            focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.blue),
            ),
            fillColor: Colors.grey.shade100,
            filled: true,
            hintText: hintText,
            hintStyle: TextStyle(
              fontFamily: 'Lato',
              color: Colors.grey[500],
            )),
      ),
    );
  }
}
