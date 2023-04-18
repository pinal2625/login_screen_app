import 'package:flutter/material.dart';
import 'package:login_screen_app/app%20common/textfieldapp.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  GlobalKey<FormState> formkey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool passwordvisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Form(
        key: formkey,
        child: ListView(
          children: [
            SafeArea(
              child: Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: const Color(0xFFF5F4F8),
                          image: const DecorationImage(
                            image: AssetImage("assets/images/icon.png"),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 35),
                      child: RichText(
                        text: const TextSpan(
                          text: "Create your\t",
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.normal,
                            color: Color(0xFF252B5C),
                            fontFamily: "Raleway-Medium",
                          ),
                          children: <TextSpan>[
                            TextSpan(
                              text: "account 👇",
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF252B5C),
                                fontFamily: "Raleway-Medium",
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 15),
                      child: Text(
                        "quis nostrud exercitation ullamco laboris nisi ut",
                        style: TextStyle(
                          color: Color(0xFF53587A),
                          fontFamily: "Raleway-Regular",
                          fontWeight: FontWeight.normal,
                          fontSize: 12,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 30),
                      child: Textfieldapp(
                        controller: nameController,
                        hintText: "Full Name",
                        textInputAction: TextInputAction.next,
                        suffixIcon: Icon(Icons.person),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Textfieldapp(
                        controller: emailController,
                        hintText: "Email",
                        textInputAction: TextInputAction.next,
                        suffixIcon: Icon(Icons.email_outlined),
                        validator: (value) {
                          if (RegExp(
                                  r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                              .hasMatch(value!)) {
                            return "";
                          } else {
                            return "please enter valid email";
                          }
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Textfieldapp(
                        controller: passwordController,
                        obscureText: !passwordvisible,
                        hintText: "password",
                        textInputAction: TextInputAction.done,
                        suffixIcon: Icon(Icons.lock_outline),
                        validator: (value) {
                          if (value!.trim().isEmpty) {
                            return "";
                          } else {
                            return "please enter valid password";
                          }
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Row(
                        children: const [
                          Text(
                            "Terms of service",
                            style: TextStyle(
                                color: Color(0xFF634AFD),
                                fontWeight: FontWeight.bold,
                                fontFamily: "Raleway-Bold",
                                fontSize: 12),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 130),
                            child: Text(
                              "Show password",
                              style: TextStyle(
                                  color: Color(0xFF252B5C),
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "Raleway-Bold",
                                  fontSize: 12),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 40),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Scaffold(),
                              ));
                          setState(() {});
                        },
                        style: ButtonStyle(
                          textStyle: MaterialStateProperty.all(const TextStyle(
                            color: Color(0xFFFEFEFF),
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            fontFamily: "Merriweather-Bold",
                          )),
                          shape: MaterialStateProperty.all(
                              ContinuousRectangleBorder(
                            borderRadius: BorderRadius.circular(60),
                          )),
                          overlayColor:
                              const MaterialStatePropertyAll(Color(0xFF634AFD)),
                          backgroundColor:
                              MaterialStatePropertyAll(Color(0xFF634AFD)),
                          fixedSize: MaterialStateProperty.all(
                            Size(327, 70),
                          ),
                        ),
                        child: Text(
                          "Register",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontFamily: "Raleway-Bold",
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Stack(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 25),
                              child: Container(
                                height: 5,
                                width: 327,
                                decoration: BoxDecoration(
                                    color: Color(0xFFECEDF3),
                                    borderRadius: BorderRadius.circular(10)),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 155, top: 23),
                              child: Container(
                                height: 12,
                                width: 20,
                                decoration: const BoxDecoration(
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black12,
                                        blurRadius: 12,
                                        // blurStyle: BlurStyle.normal,
                                      ),
                                    ]),
                                child: const Center(
                                  child: Text(
                                    "OR",
                                    style: TextStyle(
                                      color: Color(0xFFA1A5C1),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 10,
                                      fontFamily: "Raleway-Bold",
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Row(
                        children: [
                          Container(
                            height: 70,
                            width: 155,
                            decoration: BoxDecoration(
                              color: Color(0xFFF5F4F8),
                              borderRadius: BorderRadius.circular(25),
                              image: const DecorationImage(
                                image: AssetImage(
                                    "assets/images/Google - normal.png"),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Container(
                              height: 70,
                              width: 155,
                              decoration: BoxDecoration(
                                color: Color(0xFFF5F4F8),
                                borderRadius: BorderRadius.circular(25),
                                image: const DecorationImage(
                                  image: AssetImage(
                                      "assets/images/Facebook - normal.png"),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 75, top: 90),
                      child: RichText(
                        text: const TextSpan(
                          text: "Already have an account?",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.normal,
                            color: Color(0xFF53587A),
                            fontFamily: "Raleway-Regular",
                          ),
                          children: <TextSpan>[
                            TextSpan(
                              text: "Login",
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF634AFD),
                                fontFamily: "Raleway-Bold",
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
