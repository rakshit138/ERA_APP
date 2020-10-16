import 'package:ERA/HomePage.dart';
import 'package:ERA/loading.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'SignUp.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  String _email, _password;

  checkAuthentification() async {
    _auth.authStateChanges().listen(
      (user) {
        if (user != null) {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => HomePage(),
            ),
          );
        }
      },
    );
  }

  @override
  void initState() {
    super.initState();
    this.checkAuthentification();
  }

  login() async {
    if (_formKey.currentState.validate()) {
      _formKey.currentState.save();

      try {
        UserCredential credential = await _auth.signInWithEmailAndPassword(
            email: _email, password: _password);

        User user = credential.user;
      } catch (e) {
        showError(e.errormessage);
      }
    }
  }

  showError(String errormessage) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('ERROR'),
            content: Text(errormessage),
            actions: <Widget>[
              FlatButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text('OK'))
            ],
          );
        });
  }

  navigateToSignUp() async {
    Navigator.push(context, MaterialPageRoute(builder: (context) => SignUp()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: <Widget>[
              Container(
                height: 300,
                padding: EdgeInsets.fromLTRB(20, 40, 20, 20),
                child: Image(
                  image: AssetImage("assets/images/logo png 3.png"),
                  fit: BoxFit.fill,
                ),
              ),
              Container(
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.all(15),
                        child: Container(
                          child: TextFormField(
                              validator: (input) {
                                if (input.isEmpty) return 'Enter Email';
                              },
                              decoration: InputDecoration(
                                  contentPadding: const EdgeInsets.all(10),
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide: new BorderSide(
                                        color: Color(0xff03258C)),
                                    borderRadius:
                                        new BorderRadius.circular(25.7),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: new BorderSide(
                                        color: Color(0xff03258C), width: 3),
                                    borderRadius:
                                        new BorderRadius.circular(25.7),
                                  ),
                                  filled: true,
                                  fillColor: Colors.amber,
                                  labelStyle: TextStyle(
                                      color: Color(0xff03258C),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                  labelText: 'Email',
                                  prefixIcon: Icon(
                                    Icons.email,
                                    color: Color(0xff03258C),
                                  )),
                              onSaved: (input) => _email = input),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(15),
                        child: Container(
                          child: TextFormField(
                              validator: (input) {
                                if (input.length < 6)
                                  return 'Provide Minimum 6 Character';
                              },
                              decoration: InputDecoration(
                                  contentPadding: const EdgeInsets.all(10),
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide: new BorderSide(
                                        color: Color(0xff03258C)),
                                    borderRadius:
                                        new BorderRadius.circular(25.7),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: new BorderSide(
                                        color: Color(0xff03258C), width: 3),
                                    borderRadius:
                                        new BorderRadius.circular(25.7),
                                  ),
                                  filled: true,
                                  fillColor: Colors.amber,
                                  labelStyle: TextStyle(
                                      color: Color(0xff03258C),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                  labelText: 'Password',
                                  prefixIcon: Icon(
                                    Icons.lock,
                                    color: Color(0xff03258C),
                                  )),
                              obscureText: true,
                              onSaved: (input) => _password = input),
                        ),
                      ),
                      SizedBox(height: 20),
                      RaisedButton(
                        padding: EdgeInsets.fromLTRB(70, 10, 70, 10),
                        onPressed: login,
                        child: Text('LOGIN',
                            style: TextStyle(
                                fontFamily: 'Merriweather',
                                color: Color(0xff03258C),
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold)),
                        color: Colors.amber,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              GestureDetector(
                child: Text('Create an Account?'),
                onTap: navigateToSignUp,
              )
            ],
          ),
        ),
      ),
    );
  }
}
