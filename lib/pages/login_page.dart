import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter_application_1/utils/routes.dart';
import 'package:matcher/matcher.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool chngbtn = false;
  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
            child: Column(
          children: [
            Image.asset(
              "assets/images/log.png",
              height: 200,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 50),
            Text(
              "Welcome $name ",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 50),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                        hintText: "Enter UserName", labelText: "Username"),
                    onChanged: (value) {
                      name = value;
                      setState(() {});
                    },
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                        hintText: "Enter Password", labelText: "Password"),
                  ),
                  SizedBox(height: 40),

                  InkWell(
                    onTap: () async {
                      setState(() {
                        chngbtn = true;
                      });
                      await Future.delayed(Duration(milliseconds: 20));
                      Navigator.pushNamed(context, MyRoutes.homeroute);
                    },
                    child: AnimatedContainer(
                      duration: Duration(milliseconds: 20),
                      width: chngbtn ? 50 : 140,
                      height: 50,
                      alignment: Alignment.center,
                      child: chngbtn
                          ? Icon(
                              Icons.done,
                              color: Colors.white,
                            )
                          : Text(
                              "Login",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                            ),
                      decoration: BoxDecoration(
                          color: Colors.purple,
                          borderRadius:
                              BorderRadius.circular(chngbtn ? 50 : 8)),
                    ),
                  ),
                  // ElevatedButton(
                  //  child: Text("Login"),
                  //  style: TextButton.styleFrom(minimumSize: Size(140, 50)),
                  //  onPressed: () {
                  // Navigator.pushNamed(context, MyRoutes.homeroute);
                  // },
                  // )
                ],
              ),
            ),
          ],
        )));
  }
}
