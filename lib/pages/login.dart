import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:stylish/components/button.dart';
import 'package:stylish/components/search_button.dart';
import 'package:stylish/components/squar_tile.dart';
import 'package:stylish/components/textField.dart';
import 'package:stylish/pages/homepage.dart';
import 'package:stylish/pages/signup.dart';
import 'package:stylish/menu.dart';

class login extends StatelessWidget {
  login({super.key});

//edit text
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  final controller = TextEditingController();
//sign in
  void signUserIn() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                "assets/logo.png",
                height: 54,
                width: 62,
              ),

              //logo
              SizedBox(height: 40),
              //welcome back
              Text(
                'Login',
                style: TextStyle(
                  color: Color(0xff230A06),
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                ),
              ),
              SizedBox(
                height: 25,
              ),

              MyTextField(
                  controller: usernameController,
                  hintText: "Name",
                  obscuretext: false,
                  Widget1: Icon(
                    Icons.account_box,
                    color: Color.fromARGB(255, 248, 179, 158),
                  )),

              SizedBox(
                height: 10,
              ),
              //password myseacrh

              MyTextField(
                  controller: passwordController,
                  hintText: "Password",
                  obscuretext: true,
                  Widget1: Icon(
                    Icons.lock,
                    color: Color.fromARGB(255, 248, 179, 158),
                  )),

              SizedBox(height: 18),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Forgot Password ?',
                      style: TextStyle(
                        color: Color(0xFF230A06),
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 20),
              //login
              MyButton(
                ontap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) {
                      return menu();
                    }),
                  );
                },
                nameBtn: "Login",
              ), //link next pages

              SizedBox(height: 31),

              //OR
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Divider(
                        thickness: 3,
                        color: Colors.grey[90],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25.0),
                      child: Text(
                        'OR',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                    Expanded(
                      child: Divider(
                        thickness: 3,
                        color: Colors.grey[90],
                      ),
                    ),
                  ],
                ),
              ),

              //GOOGLE DAN FACEBOOK
              SizedBox(height: 10),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      width: 130,
                      height: 130,
                      child: Image.asset("assets/google.png")),
                  SizedBox(
                    width: 0,
                  ),
                  Container(
                      width: 130,
                      height: 130,
                      child: Image.asset("assets/facebook.png")),
                ],
              ),
              SizedBox(
                height: 27,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have a account?",
                    style: TextStyle(fontWeight: FontWeight.w400),
                  ),
                  const SizedBox(
                    width: 4,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pop(
                        context,
                        MaterialPageRoute(builder: (context) {
                          return menu();
                        }),
                      );
                    },
                    child: Text(
                      "Sign Up",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
