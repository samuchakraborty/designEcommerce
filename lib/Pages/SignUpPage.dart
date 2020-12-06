import 'package:ecomerce_design/Pages/SignInPage.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  SignUpPage({Key key}) : super(key: key);

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
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
                      child: Text("Name"),
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        icon: Icon(Icons.people),
                        hintText: "Enter Your Name",
                      ),
                      onSaved: (String value) {
                        // This optional block of code can be used to run
                        // code when the user saves the form.
                      },
                      validator: (String value) {
                        return value.contains('@')
                            ? 'Do not use the @ char.'
                            : null;
                      },
                    ),
                    Container(
                      alignment: Alignment.topLeft,
                      child: Text("Verification Code *"),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          alignment: Alignment.topLeft,
                          width: 120,
                          child: TextFormField(
                            decoration: const InputDecoration(
                              border: InputBorder.none,
                              hintText: "Enter OTP",
                            ),
                            onSaved: (String value) {
                              // This optional block of code can be used to run
                              // code when the user saves the form.
                            },
                            validator: (String value) {
                              //  return value.contains('@') ? null : 'Do not use the @ char.';
                              return value.length < 6
                                  ? "Require 6digit code"
                                  : null;
                            },
                          ),
                        ),
                        Container(
                          alignment: Alignment.topRight,

                          margin: EdgeInsets.only(right: 29),
                          height: 40,
                          width: 80,
                         
                          decoration: BoxDecoration(
                             color: Colors.white,
                             border: Border.all(color: Colors.black),
                           borderRadius: BorderRadius.circular(12),
                          ),
                          child: FlatButton(
                            child: Text("Send", style: TextStyle(color: Colors.grey, fontSize: 16), ),

                           
                            onPressed: () {},
                          ),
                        )
                      ],
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
                        child: Text("Sign Up", style: TextStyle(color: Colors.white),),
                        onPressed: () {


                          
                        },
                      ),
                    ),
                    SizedBox(height: 4),
                    Container(
                      child: Text("or You can login using social app"),
                    ),
                    SizedBox(height: 4),
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
                    Container(
                        child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Already have an account?"),
                        FlatButton(
                          child: Text("Sign In"),
                          onPressed: () {
                             Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SignInPage()));
                          },
                        ),
                      ],
                    )),
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
