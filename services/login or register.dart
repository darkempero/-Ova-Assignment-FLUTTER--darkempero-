
import 'package:chat_app/page/login.dart';
import 'package:chat_app/page/register.dart';
import 'package:flutter/material.dart';
 
class LoginOrRegister extends StatefulWidget {
  const LoginOrRegister({super.key});

  @override
  State<LoginOrRegister> createState() => _LoginOrRegisterState();
}

class _LoginOrRegisterState extends State<LoginOrRegister> {
  bool showLoginPage = true;
  @override
  void toggel(){
    setState(() {
      showLoginPage = !showLoginPage;
    });
  }

  @override
  Widget build(BuildContext context) {
    if(showLoginPage){
      return login(onTap: toggel);
    }
    else{
      return register(onTap: toggel);
    }
  }
}
