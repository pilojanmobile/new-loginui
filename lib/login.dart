import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  Login({Key key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: SingleChildScrollView(
          child: Container(
            color: Colors.amber,
            height: size.height,
            child: Column(
              children: [
                Container(
                  height: size.height / 3,
                  color: Colors.amber,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 55,
                          child: SizedBox(
                            height: 100,
                            width: 100,
                            child: Image.asset("assets/Puppy.png"),
                          )),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(
                            child: Text(
                          "Welcome\nPuppy",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        )),
                      )
                    ],
                  ),
                ),
                Expanded(
                    child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(25),
                          topRight: Radius.circular(25))),
                  //color: Colors.red,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 40, vertical: 30),
                        child: Center(
                            child: Text(
                          "Please Enter Your Email and\nPassword",
                          style: TextStyle(fontSize: 20),
                          textAlign: TextAlign.center,
                        )),
                      ),
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.all(28.0),
                          child: Container(
                            alignment: Alignment.center,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                TextField(
                                  textInputAction: TextInputAction.next,
                                  onEditingComplete: () =>
                                      FocusScope.of(context).nextFocus(),
                                  keyboardType: TextInputType.emailAddress,
                                  decoration: InputDecoration(
                                      hintText: "Enter the email"),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                TextField(
                                  obscureText: true,
                                  textInputAction: TextInputAction.done,
                                  onEditingComplete: () =>
                                      FocusScope.of(context).unfocus(),
                                  keyboardType: TextInputType.text,
                                  decoration: InputDecoration(
                                      hintText: "Enter the password"),
                                ),
                                SizedBox(
                                  height: 25,
                                ),
                                ButtonTheme(
                                    minWidth: 200,
                                    height: 55,
                                    child: RaisedButton(
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(15)),
                                      onPressed: () {},
                                      color: Colors.amber,
                                      child: Text(
                                        "Login",
                                        style: TextStyle(
                                            color: Colors.black, fontSize: 20),
                                      ),
                                    )),
                                Padding(
                                  padding: const EdgeInsets.all(18.0),
                                  child: Text(
                                    "Signup",
                                    style: TextStyle(
                                        color: Colors.amber,
                                        fontSize: 20,
                                        decoration: TextDecoration.underline,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Text(
                                    "Forget Password",
                                    style: TextStyle(
                                        color: Colors.amber,
                                        fontSize: 20,
                                        decoration: TextDecoration.underline,
                                        fontWeight: FontWeight.bold),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
