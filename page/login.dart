import 'package:chat_app/componets/button.dart';
import 'package:chat_app/componets/textfield.dart';
import 'package:flutter/material.dart';


class login extends StatefulWidget {
  final void Function()? onTap;
  const login({super.key, required this.onTap});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  final email=TextEditingController();
  final password= TextEditingController();
  void signIn(){

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body:SafeArea(
       child:  Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children:<Widget>[
                //logo
                const SizedBox(height:50),
                const Icon(
                  Icons.message,
                  size: 100,
                  color: Colors.cyan,
                ),
                const SizedBox(height:50),
                // welcome text
                 const Text(
                    'WELCOME BACK',
                      style:TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.cyan

                      )
                  ),
                const SizedBox(height:25),
                //text field for email
                textField(
                    obscuretext: false,
                    hintText: 'email',
                    controller: email),

                const SizedBox(height:15),
                // text field for password
                textField(
                    obscuretext: true,
                    hintText: 'password',
                    controller: password),

                const SizedBox(height:25),
                //button to sign up
                button(ontap:signIn, text: 'sign in',),
                const SizedBox(height:50),

                //not a member
                 Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('not a member',style: TextStyle(color: Colors.purple),),
                    const SizedBox(width:4),
                    GestureDetector(
                      onTap: widget.onTap,
                      child: const Text(
                        'Register Now',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.purple,

                        ),
                      ),
                    )
                  ],
                )

              ],
            ),
          )
        )
      )
    );
  }
}
