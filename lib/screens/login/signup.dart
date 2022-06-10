import "package:flutter/material.dart";
import "package:flutter/widgets.dart";
import "package:flutter/cupertino.dart";
import "../../authentication/authentication.dart";
import "../main/home.dart";
import 'login.dart';

class Signup extends StatefulWidget {
  Signup({Key? key}) : super(key: key);

  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  // Essential variables
  bool checkpress = false;
  bool notcheck = false;

  // Checker function
  void checkbox(boolean) {
    setState(() {
      checkpress = boolean;
    });
  }

  // Google Signin function
  Future<void> GoogleSignIn() async {
    if (checkpress == true) {
      await Authentification.singInWithGoogle();

    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Signup())

    );
    } else {
      setState(() {
        notcheck = !notcheck;
      });

    }
  }
  @override
  Widget build(BuildContext context) {
    print(checkpress);
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.white,
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.only(top: 60, left: 20),
                  child: GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: Icon(Icons.arrow_back_ios, color: Colors.black)
                  )
                ),
                Container(
                  margin: EdgeInsets.only(top: 60, left: 100),
                  child: Text("Sign Up", style: TextStyle(fontFamily: "Inter", fontSize: 18, fontWeight: FontWeight.w600, color: Colors.black))
                )
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 100),
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 16, right: 16),
                    child: SizedBox(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Username",
                          hintStyle: TextStyle(fontFamily: "Inter", fontSize: 16, fontWeight: FontWeight.w400, color: Color.fromRGBO(145, 145, 159, 1)),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(16),
                            borderSide: BorderSide(color: Colors.grey.withOpacity(0.3), width: 1),
                          ),
                          
                         
                          
                        )
                      )
                    )
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 16, right: 16, top: 20),
                    child: SizedBox(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Email",
                          hintStyle: TextStyle(fontFamily: "Inter", fontSize: 16, fontWeight: FontWeight.w400, color: Color.fromRGBO(145, 145, 159, 1)),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(16),
                            borderSide: BorderSide(color: Colors.grey.withOpacity(0.3), width: 1),
                          ),
                          
                         
                          
                        )
                      )
                    )
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 16, right: 16, top: 20),
                    child: SizedBox(
                      child: TextField(
                        decoration: InputDecoration(
                          suffixIcon: Icon(Icons.visibility, color: Color.fromRGBO(145, 145, 159, 1)),

                          hintText: "Password",
                          hintStyle: TextStyle(fontFamily: "Inter", fontSize: 16, fontWeight: FontWeight.w400, color: Color.fromRGBO(145, 145, 159, 1)),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(16),
                            borderSide: BorderSide(color: Colors.grey.withOpacity(0.2), width: 1),
                          ),
                          
                         
                          
                        )
                      )
                    )
                  ),
                ]
              )
            ),
            
                Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.only(top: 10, left: 20),
                  child: Visibility(
                    visible: notcheck,
                    child: Text("Please check the box check below", style: TextStyle(fontFamily: "Inter", fontSize: 16, fontWeight: FontWeight.w500, color: Colors.red))

                  ),
                ),
            
            Container(
              margin: EdgeInsets.only(top: 40),
              child: Row(
                children: [
                  Container(
                    child: Checkbox(
                      onChanged: checkbox,
                      value: checkpress,
                      
                      

                    )

                  ),
                  Container(
                    width: 291,
                    height: 36,
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "By signing up, you agree to the ",
                            style: TextStyle(fontFamily: "Inter", fontSize: 14, fontWeight: FontWeight.w500, color: Colors.black),
                          ),
                          TextSpan(
                            text: "Terms of Service and Privacy Policy",
                            style: TextStyle(fontFamily: "Inter", fontSize: 14, fontWeight: FontWeight.w500, color: Color.fromRGBO(127, 61, 255, 1))
                          )
                        ]
                      )
                    )
                  )
                ]
              )
            ),
            Container(
              margin: EdgeInsets.only(top: 30),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
                },
                child: Container(
                  width: 343,
                  height: 56,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Color.fromRGBO(127, 61, 255, 1),
                  ),
                  child: Center(
                    child: Text("Sign Up", style: TextStyle(fontFamily: "Inter", fontSize: 18, fontWeight: FontWeight.w600, color: Colors.white))
                  )
                )

              )
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              child: Text("Or with", style: TextStyle(fontFamily: "Inter", fontSize: 14, fontWeight: FontWeight.w700, color: Color.fromRGBO(145, 145, 159, 1)))
            ),
            Container(
              margin: EdgeInsets.only(top: 30),
              child: GestureDetector(

                onTap: GoogleSignIn,
                child: Container(
                  width: 343,
                  height: 56,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(width: 1, color: Color.fromRGBO(241, 241, 250, 1))
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        child: Image.asset('assets/images/googleicon.png')
                      ),
                      Container(
                        child: Text("Sign Up with Google", style: TextStyle(fontFamily: "Inter", fontSize: 18, fontWeight: FontWeight.w500, color: Colors.black))
                      )
                    ]
                  )
                )
              )
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              child: GestureDetector(
                onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => Login())),
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "Already have an Account? ",
                        style: TextStyle(fontFamily: "Inter", fontSize: 16, fontWeight: FontWeight.w500, color: Colors.grey.withOpacity(0.4))
                      ),
                      TextSpan(
                        text: "Signup",
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