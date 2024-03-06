import 'package:flutter/material.dart';

class textField extends StatelessWidget {
  const textField({super.key, required this.obscuretext, required this.hintText, required this.controller});
  final bool obscuretext;
  final String hintText;
  final TextEditingController controller;


  @override
  Widget build(BuildContext context) {
    return TextField(
        obscureText: obscuretext,
        controller: controller,
        decoration: InputDecoration(
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.cyan)
          ),
          focusedBorder:const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.purple)
          ),
          fillColor: Colors.orange,
          filled: true,
          hintText: hintText,
          hintStyle: const TextStyle(color: Colors.black)



    )
    );
  }
}