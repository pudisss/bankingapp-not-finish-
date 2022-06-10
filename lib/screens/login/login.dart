import 'package:bankingapp/screens/login/signup.dart';
import "package:flutter/material.dart";
import "package:flutter/widgets.dart";
import "package:flutter/cupertino.dart";

class Login extends StatefulWidget {
  Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.white,
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 60, left: 30),
              child: Row(
                children: [
                  Container(
                    child: GestureDetector(
                      onTap: () => Navigator.pop(context),
                      child: Icon(Icons.arrow_back_ios, color: Colors.black),
                    )
                  ),
                  Container(
                    margin: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.3),
                    child: Text("Login", style: TextStyle(fontFamily: "Inter", fontSize: 18, fontWeight: FontWeight.w600, color: Colors.black))
                  )
                ]
              )
            ),
            Container(
              margin: EdgeInsets.only(top: 100),
              child: Column(
                children: [
                  
                  Container(
                    margin: EdgeInsets.only(left: 20, right: 20),
                    child: SizedBox(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Email",
                          hintStyle: TextStyle(fontFamily: "Inter", fontSize: 16, fontWeight: FontWeight.w400, color: Colors.grey.withOpacity(0.7)),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(16),
                            borderSide: BorderSide(width: 1, color: Colors.grey.withOpacity(0.4))
                          )
                        )

                      )
                    )
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 20, right: 20, top: 20),
                    child: SizedBox(
                      child: TextField(
                        decoration: InputDecoration(
                          suffixIcon: Icon(Icons.visibility, color: Color.fromRGBO(145, 145, 159, 1)),
                          hintText: "Password",
                          hintStyle: TextStyle(fontFamily: "Inter", fontSize: 16, fontWeight: FontWeight.w400, color: Colors.grey.withOpacity(0.7)),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(16),
                            borderSide: BorderSide(width: 1, color: Colors.grey.withOpacity(0.4))
                          )
                        )

                      )
                    )
                  ),
                  
                ]
              )
            ),
            Container(
              margin: EdgeInsets.only(top: 50),
              child: GestureDetector(
                child: Container(
                  width: 343,
                  height: 56,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Color.fromRGBO(127, 61, 255, 1),
                  ),
                  child: Center(
                    child: Text("Login", style: TextStyle(fontFamily: "Inter", fontSize: 18, fontWeight: FontWeight.w600, color: Colors.white,))
                  )
                )
              )
            ),
            Container(
              margin: EdgeInsets.only(top: 40),
              child: GestureDetector(
                child: Text("Forgot Password", style: TextStyle(fontFamily: "Inter", fontSize: 18, fontWeight: FontWeight.w600, color: Color.fromRGBO(127, 61, 255, 1)))
              )
            ),
            Container(
              margin: EdgeInsets.only(top: 50),
              child: GestureDetector(
                onTap: () => {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Signup()))
                },
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "Don't have an Account yet? ",
                        style: TextStyle(fontFamily: "Inter", fontSize: 16, fontWeight: FontWeight.w500, color: Color.fromRGBO(145, 145, 159, 1)),
                      ),
                      TextSpan(
                        text: "Sign Up",
                        style: TextStyle(fontFamily: "Inter", fontSize: 16, fontWeight: FontWeight.w500, color: Color.fromRGBO(127, 61, 255, 1))
                      )
                    ]
                  )
                )
              )
            )
          ]
        )
      )
    );
  }
}