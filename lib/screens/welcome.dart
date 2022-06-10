import "package:flutter/material.dart";
import "package:flutter/widgets.dart";
import "package:flutter/cupertino.dart";
import "login/login.dart";
import "login/signup.dart";

class Welcome extends StatefulWidget {
  Welcome({Key? key}) : super(key: key);

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  int currentpage = 0;

  // On chanage page function
  void onchangepage(int index) {
    setState(() {
      currentpage++;
    });

  }

  // Switch to Login function
  // Switch to Signup function

  
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
              width: MediaQuery.of(context).size.width,
              height: 628,
              child: PageView(
                onPageChanged: onchangepage,
              children: [
                Welcome1(),
                Welcome2(),
                Welcome3(),
              ],
              scrollDirection: Axis.horizontal,



            )),
            Container(
              margin: EdgeInsets.only(top: 20),
              child: Column(
                children: [
                  Container(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Signup())
                        );
                      },
                      child: Container(
                        width: 343,
                        height: 56,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: Color.fromRGBO(127, 61, 255, 1),
                        ),
                        child: Center(child: Text("Sign Up", style: TextStyle(fontFamily: "Inter", fontSize: 18, fontWeight: FontWeight.w600, color: Colors.white,)))
                      )
                    )
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Login())
                        );
                      },
                      child: Container(
                        width: 343,
                        height: 56,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: Color.fromRGBO(238, 229, 255, 1),

                        ),
                        child: Center(child: Text("Login", style: TextStyle(fontFamily: "Inter", fontSize: 18, fontWeight: FontWeight.w600, color: Color.fromRGBO(127, 61, 255, 1))))
                      )
                    )
                  )
                ]
              )
            )

          ]
        )
      )
    );
  }
}

// This is the welcome 1 page
class Welcome1 extends StatefulWidget {
  Welcome1({Key? key}) : super(key: key);

  @override
  State<Welcome1> createState() => _Welcome1State();
}

class _Welcome1State extends State<Welcome1> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 100),
      child: Column(
        children: [
          Container(
            child: Image.asset("assets/images/welcome/welcome1.png"),

          ),
          Container(
            child: Column(
              children: [
                Container(
                  width: 277,
                  height: 78,

                  child: Text("Gain total control of your money",textAlign: TextAlign.center, style: TextStyle(fontFamily: "Inter", fontSize: 32, fontWeight: FontWeight.w700, color: Colors.black)),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10),
                  width: 272,
                  height: 38,
                  child: Text("Become your own money manager and make every cent count",textAlign: TextAlign.center, style: TextStyle(fontFamily: "Inter", fontSize: 16, fontWeight: FontWeight.w500, color: Color.fromRGBO(145, 145, 159, 1)))
                )

              ]
            )
          ),
          Container(
            margin: EdgeInsets.only(top: 50),
            child: Image.asset("assets/images/1dots.png")
          )
        ]
      )
    );
  }
}
// This is the welcome 2 page
class Welcome2 extends StatefulWidget {
  Welcome2({Key? key}) : super(key: key);

  @override
  State<Welcome2> createState() => _Welcome2State();
}

class _Welcome2State extends State<Welcome2> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 100),
      child: Column(
        children: [
          Container(
            child: Image.asset("assets/images/welcome/welcome2.png"),

          ),
          Container(
            child: Column(
              children: [
                Container(
                  width: 277,
                  height: 78,

                  child: Text("Know where your money goes",textAlign: TextAlign.center, style: TextStyle(fontFamily: "Inter", fontSize: 32, fontWeight: FontWeight.w700, color: Colors.black)),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10),
                  width: 272,
                  height: 38,
                  child: Text("Track your transaction easily,with categories and financial report ",textAlign: TextAlign.center, style: TextStyle(fontFamily: "Inter", fontSize: 16, fontWeight: FontWeight.w500, color: Color.fromRGBO(145, 145, 159, 1)))
                )

              ]
            )
          ),
          Container(
            margin: EdgeInsets.only(top: 50),
            child: Image.asset("assets/images/2dots.png")
          )
        ]
      )
    );
  }
}
// Welcome 3 page

class Welcome3 extends StatefulWidget {
  Welcome3({Key? key}) : super(key: key);

  @override
  State<Welcome3> createState() => _Welcome3State();
}

class _Welcome3State extends State<Welcome3> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 100),
      child: Column(
        children: [
          Container(
            child: Image.asset("assets/images/welcome/welcome3.png"),

          ),
          Container(
            child: Column(
              children: [
                Container(
                  width: 277,
                  height:48,

                  child: Text("Planning ahead",textAlign: TextAlign.center, style: TextStyle(fontFamily: "Inter", fontSize: 32, fontWeight: FontWeight.w700, color: Colors.black)),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10),
                  width: 272,
                  height: 38,
                  child: Text("Setup your budget for each category so you in control",textAlign: TextAlign.center, style: TextStyle(fontFamily: "Inter", fontSize: 16, fontWeight: FontWeight.w500, color: Color.fromRGBO(145, 145, 159, 1)))
                )

              ]
            )
          ),
          Container(
            margin: EdgeInsets.only(top: 50),
            child: Image.asset("assets/images/3dots.png")
          )
        ]
      )
    );
  }
}