import 'package:flutter/material.dart';
import 'package:chat_app/componets/textfield.dart';


import '../componets/button.dart';

class register extends StatefulWidget {
  final void Function()? onTap;
  const register({super.key, this.onTap});

  @override
  State<register> createState() => _registerState();
}

class _registerState extends State<register> {
  final email=TextEditingController();
  final password= TextEditingController();
  final passwordC= TextEditingController();
  void signUp(){

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
                          'Lets Create an Account For You',
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

                      const SizedBox(height:15),

                      //confirm password
                      textField(
                          obscuretext: true,
                          hintText: 'confirm password',
                          controller: passwordC),

                      const SizedBox(height:25),
                      //button to sign up
                      button(ontap:signUp, text: 'sign up',),
                      const SizedBox(height:50),

                      //not a member
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text('Already a member',style: TextStyle(
                            color: Colors.purple
                          ),),
                          const SizedBox(width:4),
                          GestureDetector(
                            onTap: widget.onTap,
                            child: const Text(
                              'Login now',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.purple
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
