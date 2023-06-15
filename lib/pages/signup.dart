import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:stylish/components/button.dart';
import 'package:stylish/components/search_button.dart';
import 'package:stylish/components/squar_tile.dart';
import 'package:stylish/components/textField.dart';
import 'package:stylish/menu.dart';
// import 'package:stylish/pages/homepage.dart';
import 'package:stylish/pages/login.dart';

class signup extends StatelessWidget {
  signup({super.key});

//edit text
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  final emailController = TextEditingController();
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
              //logo
              Image.asset(
                "assets/logo.png",
                height: 54,
                width: 62,
              ),

              SizedBox(height: 40),

              //sign up
              Text(
                'Sign Up',
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
                  controller: emailController,
                  hintText: "Email",
                  obscuretext: false,
                  Widget1: Icon(
                    Icons.account_box,
                    color: Color.fromARGB(255, 248, 179, 158),
                  )),

              SizedBox(
                height: 10,
              ),
              MyTextField(
                  controller: emailController,
                  hintText: "Email",
                  obscuretext: false,
                  Widget1: Icon(
                    Icons.email,
                    color: Color.fromARGB(255, 248, 179, 158),
                  )),

              SizedBox(height: 10),

              MyTextField(
                  controller: emailController,
                  hintText: "Password",
                  obscuretext: true,
                  Widget1: Icon(
                    Icons.lock,
                    color: Color.fromARGB(255, 248, 179, 158),
                  )),
              SizedBox(
                height: 10,
              ),

              Row(
                children: [
                  Padding(padding: EdgeInsets.only(left: 20)),
                  Image.asset(
                    "assets/conteng.png",
                  ),
                  SizedBox(
                    width: 7,
                  ),
                  Text(
                    "I accept all the",
                    style: TextStyle(fontSize: 12),
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  Text(
                    "Terms & Conditions",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                  )
                ],
              ),

              SizedBox(height: 20),
              //sig in
              MyButton(
                ontap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) {
                      return menu();
                    }),
                  );
                },
                nameBtn: "Sign Up",
              ), //link next pages
              //forgot password
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
                    "Already have a account?",
                    style: TextStyle(fontWeight: FontWeight.w400),
                  ),
                  const SizedBox(
                    width: 4,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) {
                          return login();
                        }),
                      );
                    },
                    child: Text(
                      "Login",
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
