import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/design/design.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {

  final _formKey = GlobalKey<FormState>();
  String email,password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        title: appBar(context),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        brightness: Brightness.light,
        
      ),
      
      body: Form(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 22),
          
          child: Column(
            children: [
              Spacer(),
/*------------------------- Email -----------------------------*/
              TextFormField(
                validator: (value){
                  return value.isEmpty ? "Enter your email" : null;
                },
                decoration: InputDecoration(
                  hintText: "Email"
                ),
                onChanged: (value){
                  email = value;
                },
              ),
              SizedBox(height: 6,),
/*------------------------ Password -----------------------------*/
              TextFormField(
                validator: (value){
                  return value.isEmpty ? "Enter your password" : null;
                },
                decoration: InputDecoration(
                  hintText: "Password"
                ),
                onChanged: (value){
                  email = value;
                },
              ),
              SizedBox(height: 40,),
/*----------------------- Sign In Button -------------------------*/
              Container(
                padding: EdgeInsets.symmetric(vertical: 14),
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(30),
                ),
                width: MediaQuery.of(context).size.width - 44,
                alignment: Alignment.center,
                child: Text(
                  "Sign In",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
              SizedBox(height: 22,),
/*------------------------ Sign Up Option ------------------------*/
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Create account? ",
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                  Text(
                    "Sign Up",
                    style: TextStyle(
                      fontSize: 15,
                      decoration: TextDecoration.underline,
                      color: Colors.blue,
                      decorationColor: Colors.blue,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 50,),
/*----------------------------------------------------------*/
              Container(
                
                decoration: BoxDecoration(
                  color: Colors.blue,
                  image: DecorationImage(
                    image: AssetImage("images/img.png"),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}