import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'HomePage.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  FirebaseAuth _auth = FirebaseAuth.instance;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  String _name, _email, _password;
  bool _acceptTerms = false;

  checkAuthentication() async {
    _auth.authStateChanges().listen((user) async {
      if (user != null) {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => HomePage()));
      }
    });
  }

  @override
  void initState() {
    super.initState();
    this.checkAuthentication();
  }

  terms() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            'Terms & Conditions',
            style: TextStyle(color: Color(0xff03258C)),
          ),
          content: Column(children: [
            Text(' some Terms & Conditions'),
          ]),
          actions: <Widget>[
            FlatButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text(
                  'Go Back',
                  style: TextStyle(color: Color(0xff03258C), fontSize: 14),
                ))
          ],
        );
      },
    );
  }

  signUp() async {
    if (_formKey.currentState.validate()) {
      _formKey.currentState.save();

      try {
        User user = (await _auth.createUserWithEmailAndPassword(
          email: _email,
          password: _password,
        ))
            .user;
        await FirebaseFirestore.instance.collection('users').doc(user.uid).set(
          {
            'email': _email,
            'name': _name,
          },
        );
        //signup sucessfully
        print("Signin sucessfully");
        // if (user != null) {
        //   UserUpdateInfo updateuser = UserUpdateInfo();
        //   updateuser.displayName = _name;
        //   user.updateProfile(updateuser);
        // }
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
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(10),
                height: 350,
                child: Image(
                  image: AssetImage("assets/images/logopng.png"),
                  fit: BoxFit.contain,
                ),
              ),
              Container(
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: <Widget>[
                      Container(
                        child: TextFormField(
                            validator: (input) {
                              if (input.isEmpty) return 'Enter Name';
                            },
                            decoration: InputDecoration(
                              labelText: 'Name',
                              prefixIcon: Icon(Icons.person),
                            ),
                            onSaved: (input) => _name = input),
                      ),
                      Container(
                        child: TextFormField(
                            validator: (input) {
                              if (input.isEmpty) return 'Enter Email';
                            },
                            decoration: InputDecoration(
                                labelText: 'Email',
                                prefixIcon: Icon(Icons.email)),
                            onSaved: (input) => _email = input),
                      ),
                      Container(
                        child: TextFormField(
                            validator: (input) {
                              if (input.length < 6)
                                return 'Provide Minimum 6 Character';
                            },
                            decoration: InputDecoration(
                              labelText: 'Password',
                              prefixIcon: Icon(Icons.lock),
                            ),
                            obscureText: true,
                            onSaved: (input) => _password = input),
                      ),
                      // SizedBox(height: 20),
                      FlatButton(
                        onPressed: terms,
                        child: Text(
                          "Terms & Conditions",
                          style: TextStyle(
                            color: Color(0xff03258C),
                            fontSize: 18,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      CheckboxListTile(
                        value: _acceptTerms,
                        onChanged: (bool value) {
                          setState(() {
                            _acceptTerms = value;
                          });
                        },
                        title: Text(
                          'Accept T&Cs',
                          style:
                              TextStyle(color: Color(0xff03258C), fontSize: 15),
                        ),
                        activeColor: Colors.amber,
                        checkColor: Color(0xff03258C),
                      ),
                      Visibility(
                        visible: _acceptTerms,
                        child: RaisedButton(
                          padding: EdgeInsets.fromLTRB(70, 10, 70, 10),
                          onPressed: signUp,
                          child: Text(
                            'SignUp',
                            style: TextStyle(
                              color: Color(0xff03258C),
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          color: Colors.amber,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                        ),
                      )
                    ],
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
