import 'package:flutter/material.dart';

class Authfield extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;
  final bool isObscure;
  const Authfield(
    {super.key, 
    required this.hintText, 
    required this.controller,
    this.isObscure=false 
    }
    );
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        hintText: hintText
      ),
      validator: (value){
        if(value!.isEmpty){
          return "$hintText is missing!";
        }
        return null;
      },
      obscureText: isObscure,
    );
  }
}