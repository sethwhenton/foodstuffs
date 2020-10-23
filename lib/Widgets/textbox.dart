import 'package:flutter/material.dart';
import 'package:foodstuffs/constants.dart';

///THERE ARE 3 types in here. ONE FOR EMAIL, ONE FOR PASSWORD, AND A STANDARD ONE


class Textbox extends StatelessWidget {
  final String hintText;
  Textbox({this.hintText});


  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: kgreenColor,
      textAlign: TextAlign.left,
      decoration: ktextfieldDecoration.copyWith(hintText: hintText,)

    );
  }
}


class TextboxforEmail extends StatelessWidget {
  final String hintText;
  TextboxforEmail({this.hintText});


  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      child: TextField(
          cursorColor: kgreenColor,
          textAlign: TextAlign.left,
          decoration: ktextfieldDecoration.copyWith(hintText: hintText,prefixIcon: Icon(Icons.email_rounded,color: Colors.grey,))

      ),
    );
  }
}

class TextboxforPassword extends StatelessWidget {
  final String hintText;
  TextboxforPassword({this.hintText});


  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      child: TextField(
        obscureText: true,
          cursorColor: kgreenColor,
          textAlign: TextAlign.left,
          decoration: ktextfieldDecoration.copyWith(hintText: hintText,prefixIcon: Icon(Icons.lock_outline_rounded,color: Colors.grey,))

      ),
    );
  }
}