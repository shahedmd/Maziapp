import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'home.dart';

class CreateAccount extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return CreateAccountState();
  }
}

class CreateAccountState extends State {
  TextEditingController userNamecontroler = TextEditingController();

  TextEditingController emailcontroler = TextEditingController();

  TextEditingController passcontroler = TextEditingController();

  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              color: Colors.blue[900],
            ),
            Container(
              margin: EdgeInsets.only(top: 70),
              height: MediaQuery.of(context).size.height * 0.95,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40))),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 15),
                      child: Text(
                        "Sign In",
                        style: TextStyle(
                            fontSize: 35,
                            color: Colors.blue.shade900,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Form(
                        key: formKey,
                        child: Column(
                          children: [
                            Container(
                              height: 50,
                              width: MediaQuery.of(context).size.width * 0.7,
                              decoration: BoxDecoration(
                                  color: Colors.lightBlue[400],
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20))),
                              child: Padding(
                                padding: EdgeInsets.only(top: 6),
                                child: TextFormField(
                                  controller: userNamecontroler,
                                  decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: 'Enter Your User Name',
                                      hintStyle: TextStyle(color: Colors.white),
                                      prefixIcon: Icon(
                                        Icons.verified_user,
                                      )),
                                  validator: (value) {
                                    if (value!.length < 4) {
                                      return "Enter The Correct user Name";
                                    } else {
                                      return null;
                                    }
                                  },
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                              height: 50,
                              width: MediaQuery.of(context).size.width * 0.7,
                              decoration: BoxDecoration(
                                  color: Colors.lightBlue[400],
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20))),
                              child: Padding(
                                padding: EdgeInsets.only(top: 6),
                                child: TextFormField(
                                  controller: emailcontroler,
                                  decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: 'Enter Your Email',
                                      hintStyle: TextStyle(color: Colors.white),
                                      prefixIcon: Icon(
                                        Icons.mail,
                                      )),
                                  validator: (value) {
                                    final Pattern =
                                        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
                                    final regExp = RegExp(Pattern);

                                    if (!regExp.hasMatch(value!)) {
                                      return "Enter a valid email";
                                    }
                                  },
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                              height: 50,
                              width: MediaQuery.of(context).size.width * 0.7,
                              decoration: BoxDecoration(
                                  color: Colors.lightBlue[400],
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20))),
                              child: Padding(
                                padding: EdgeInsets.only(top: 6),
                                child: TextFormField(
                                  controller: passcontroler,
                                  decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: 'Enter Your Password',
                                      hintStyle: TextStyle(color: Colors.white),
                                      prefixIcon: Icon(
                                        Icons.lock,
                                      )),
                                  validator: (value) {
                                    if (value!.length < 7) {
                                      return "Enter The Correct Number";
                                    } else {
                                      return null;
                                    }
                                  },
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                              height: 50,
                              width: MediaQuery.of(context).size.width * 0.7,
                              decoration: BoxDecoration(
                                  color: Colors.lightBlue[400],
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20))),
                              child: Padding(
                                padding: EdgeInsets.only(top: 6),
                                child: TextFormField(
                                  decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: 'Confirm Password',
                                      hintStyle: TextStyle(color: Colors.white),
                                      prefixIcon: Icon(
                                        Icons.lock,
                                      )),
                                  validator: (value) {
                                    if (value != passcontroler.text) {
                                      return "Enter The Correct Password";
                                    } else {
                                      return null;
                                    }
                                  },
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            InkWell(
                              onTap: () {
                                final isValid =
                                    formKey.currentState!.validate();

                                if (formKey.currentState!.validate()) {
                                  
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => MyHomePage()),
                                  );
                                }
                              },
                              child: Container(
                                height: 50,
                                width: MediaQuery.of(context).size.width * 0.7,
                                decoration: BoxDecoration(
                                    color: Colors.blue[900],
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(20))),
                                child: const Center(
                                    child: Text(
                                  "Sign In",
                                  style: TextStyle(
                                      fontSize: 30,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                )),
                              ),
                            )
                          ],
                        )),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.21,
                      width: MediaQuery.of(context).size.width * 0.4,
                      color: Colors.black,
                      child: Image.asset(
                        'image/sh.3.jpg',
                        fit: BoxFit.fill,
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
