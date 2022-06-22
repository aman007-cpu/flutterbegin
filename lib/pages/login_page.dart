import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter_application_1/utils/routes.dart';
import 'package:matcher/matcher.dart';
import 'package:velocity_x/velocity_x.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool chngbtn = false;
  final _formkey = GlobalKey<FormState>();
  moveToHome(BuildContext context) async {
    if (_formkey.currentState!.validate()) {
      setState(() {
        chngbtn = true;
      });
      await Future.delayed(Duration(milliseconds: 70));
      await Navigator.pushNamed(context, MyRoutes.homeroute);
      setState(() {
        chngbtn = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
        color: context.canvasColor,
        child: SingleChildScrollView(
            child: Form(
          key: _formkey,
          child: Column(
            children: [
              Image.asset(
                "assets/images/log.jpg",
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
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "username cannot be empty";
                        }
                        return null;
                      },
                      onChanged: (value) {
                        name = value;
                        setState(() {});
                      },
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                          hintText: "Enter Password", labelText: "Password"),
                      validator: (value) {
                        if (value == " ") {
                          return "password cannot be empty";
                        } else if (value!.length < 6) {
                          return "password should be greater than 6";
                        }

                        return null;
                      },
                    ),
                    SizedBox(height: 40),

                    Material(
                      color: Color.fromARGB(255, 65, 165, 236),
                      borderRadius: BorderRadius.circular(chngbtn ? 50 : 8),
                      child: InkWell(
                        onTap: () => moveToHome(context),
                        child: AnimatedContainer(
                          duration: Duration(milliseconds: 60),
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
                        ),
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
          ),
        )));
  }
}
