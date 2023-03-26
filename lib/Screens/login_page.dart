import 'package:catalogue_app/utils/routes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(LoginPage());
}

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool chnageButton = false;
  final _formkey = GlobalKey<FormState>();
  movetoHome(BuildContext context) async {
    if (_formkey.currentState!.validate()) {
      setState(() {
        chnageButton = true;
      });
      // Navigator.pushNamed(context, MyRoutes.homeRoute);
      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRoutes.homeRoute);
      setState(() {
        chnageButton = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Form(
          key: _formkey,
          child: Column(
            children: [
              Image.asset(
                "assets/images/login_image.png",
                fit: BoxFit.cover,
              ),
              SizedBox(
                height: 20.0,
              ),
              // ignore: prefer_const_constructors
              Text("Welcome $name",
                  style: TextStyle(
                    fontSize: 30,
                  )),
              SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 16.0, horizontal: 32.0),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: "Enter Username",
                        labelText: "USERNAME",
                      ),
                      // New Update in validator func() add String? for not null
                      validator: (String? value) {
                        if (value!.isEmpty) {
                          return "Username can't be empty";
                        }
                        null;
                      },
                      onChanged: (value) {
                        name = value;
                        setState(() {});
                      },
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: "Password",
                        labelText: "ENTER PASSWORD",
                      ),
                      validator: (String? value) {
                        if (value!.isEmpty) {
                          return "Username can't be empty";
                        } else if (value.length < 8) {
                          return "Password must Contain 8 digits";
                        }
                        null;
                      },
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    // Inorder to make any widget clickable, we can use Inkwell or gesture detector
                    Material(
                      color: Colors.deepPurple,
                      borderRadius:
                          BorderRadius.circular(chnageButton ? 50 : 8.0),
                      child: InkWell(
                        onTap: () => movetoHome(context),
                        child: AnimatedContainer(
                          duration: Duration(seconds: 1),
                          width: chnageButton ? 50 : 150,
                          height: 50,
                          alignment: Alignment.center,
                          child: chnageButton
                              ? Icon(
                                  Icons.done,
                                  color: Colors.white,
                                )
                              : Text(
                                  "Login",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                          // decoration: BoxDecoration(
                          //   color: Colors.deepPurple,

                          //   // shape:
                          //   //     chnageButton ? BoxShape.circle : BoxShape.rectangle,
                          // ),
                        ),
                      ),
                    ),
                    // ElevatedButton(
                    //   child: Text("Login"),
                    //   style: TextButton.styleFrom(),
                    //   onPressed: () {
                    //     Navigator.pushNamed(context, MyRoutes.homeRoute);
                    //   },
                    // )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
