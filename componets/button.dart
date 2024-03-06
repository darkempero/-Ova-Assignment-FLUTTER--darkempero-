import 'package:flutter/material.dart';
class button extends StatelessWidget {
  const button({super.key, required this.text, required this.ontap});
  final String text;
  final void Function()? ontap;


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        padding: const EdgeInsets.all(25),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(9),
          color: Colors.cyan,
        ),
        child: Center(
          child: Text(text, style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 17,
          ),),
        ),
      ),

    );
  }
}
