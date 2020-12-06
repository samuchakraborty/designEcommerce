import 'package:ecomerce_design/Pages/ForgetPassword.dart';
import 'package:ecomerce_design/Pages/SignUpPage.dart';

import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';

class SignInPage extends StatefulWidget {
  SignInPage({Key key}) : super(key: key);

  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SafeArea(
        child: Scaffold(
          body: ListView(
            children: [
              Center(
                child: Container(
                  height: 100,
                  width: 100,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: Image.asset(
                      'assets/products/watch.jpg',
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                margin: EdgeInsets.only(left: 19, right: 19),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: 28),
                    Container(
                      alignment: Alignment.topLeft,
                      child: Text("Email/Mobile"),
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                        icon: Icon(Icons.email),
                        border: InputBorder.none,
                        hintText: "Enter mobile Number/ Email",
                      ),
                      onSaved: (String value) {
                        // This optional block of code can be used to run
                        // code when the user saves the form.
                      },
                      validator: (String value) {
                        return value.contains('@')
                            ? null
                            : 'Do not use the @ char.';
                      },
                    ),
                    Container(
                      alignment: Alignment.topLeft,
                      child: Text("Password"),
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        icon: Icon(Icons.lock),
                        hintText: "Enter Your Password",
                      ),
                      onSaved: (String value) {
                        // This optional block of code can be used to run
                        // code when the user saves the form.
                      },
                      validator: (String value) {
                        //  return value.contains('@') ? null : 'Do not use the @ char.';
                        return value.length < 4
                            ? "Password too short"
                            : "Enter a password";
                      },
                      obscureText: true,
                    ),
                    SizedBox(height: 18),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      // padding: EdgeInsets.all(2),
                      margin: EdgeInsets.only(left: 30, right: 30),
                      decoration: BoxDecoration(
                        //  shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.greenAccent,
                      ),

                      child: FlatButton(
                        child: Text(
                          "Log In",
                          style: TextStyle(color: Colors.white),
                        ),
                        onPressed: () {},
                      ),
                    ),
                    SizedBox(height: 8),
                    Container(
                      height: 20,
                      child: FlatButton(
                        child: Text("Forget Password?"),
                        onPressed: () {
                          Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => ForgetPasswordPage()));
                        },
                      ),
                    ),
                    SizedBox(height: 8),
                    Container(
                      height: 20,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Didn't have an account?"),
                          FlatButton(
                            child: Text("Register Now"),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => SignUpPage()));
                            },
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 4),
                    SizedBox(height: 24),
                    Container(
                      child: Text("or You can login using social app"),
                    ),
                    SizedBox(height: 8),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      // padding: EdgeInsets.all(2),
                      margin: EdgeInsets.only(left: 30, right: 30),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        shape: BoxShape.rectangle,
                        color: Colors.redAccent,
                      ),

                      child: FlatButton.icon(
                        icon: Icon(
                          EvaIcons.google,
                          color: Colors.white,
                        ),
                        label: Text(
                          "Google",
                          style: TextStyle(color: Colors.white),
                        ),
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
