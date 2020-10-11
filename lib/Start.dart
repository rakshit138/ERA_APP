import 'package:ERA/Login.dart';
import 'package:ERA/SignUp.dart';
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

class Start extends StatefulWidget {
  @override
  _StartState createState() => _StartState();
}

class _StartState extends State<Start> {
  navigateToLogin() async {
    Navigator.push(context, MaterialPageRoute(builder: (context) => Login()));
  }

  navigateToRegister() async {
    Navigator.push(context, MaterialPageRoute(builder: (context) => SignUp()));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: new BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/BAckground.png"),
                fit: BoxFit.cover)),
        child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Container(
                    height: 300,
                    padding: EdgeInsets.fromLTRB(20, 40, 20, 20),
                    child: Image(
                      image: AssetImage("assets/images/logo png 3.png"),
                      fit: BoxFit.fill,
                    ),
                  ),
                  SizedBox(height: 40.0),
                  Container(
                    width: 200,
                    child: RaisedButton(
                        padding: EdgeInsets.only(left: 30, right: 30),
                        onPressed: navigateToLogin,
                        child: Text(
                          'LOGIN',
                          style: TextStyle(
                            fontFamily: 'Merriweather',
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff03258C),
                          ),
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        color: Colors.amber),
                  ),
                  Container(
                    width: 200,
                    child: RaisedButton(
                        padding: EdgeInsets.only(left: 30, right: 30),
                        onPressed: navigateToRegister,
                        child: Text(
                          'REGISTER',
                          style: TextStyle(
                            fontFamily: 'Merriweather',
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff03258C),
                          ),
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        color: Colors.amber),
                  ),
                  SizedBox(height: 20),
                  Container(
                    width: 200,
                    child: SignInButton(
                      Buttons.Google,
                      text: "Sign up with Google",
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Text(
                  '\u00a9 ERA-Assistant To Redefine Education',
                  style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Merriweather',
                      fontSize: 12,
                      decoration: TextDecoration.none),
                ),
              )
            ]),
      ),
    );
  }
}
