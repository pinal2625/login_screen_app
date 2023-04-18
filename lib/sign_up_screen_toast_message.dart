import 'package:flutter/material.dart';

class SignUpScreenToastMessage extends StatefulWidget {
  const SignUpScreenToastMessage({Key? key}) : super(key: key);

  @override
  State<SignUpScreenToastMessage> createState() =>
      _SignUpScreenToastMessageState();
}

class _SignUpScreenToastMessageState extends State<SignUpScreenToastMessage> {
  bool emailValid = false;
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        physics: const AlwaysScrollableScrollPhysics(),
        scrollDirection: Axis.vertical,
        children: [
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  FloatingActionButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    tooltip: "Back",
                    elevation: 0,
                    backgroundColor: const Color(0xFFF5F4F8),
                    splashColor: const Color(0xFFF5F4F8),
                    child: const Image(
                      image: AssetImage("assets/images/icon.png"),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 35),
                    child: RichText(
                      text: const TextSpan(
                        text: "Create your",
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
                    padding: const EdgeInsets.only(top: 20),
                    child: TextField(
                      controller: nameController,
                      decoration: InputDecoration(
                        hintText: "Full Name",
                        suffix: const Icon(Icons.person),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25)),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25),
                          borderSide:
                              const BorderSide(color: Color(0xFF634AFD)),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 15),
                  TextField(
                    controller: emailController,
                    decoration: InputDecoration(
                      hintText: "Email",
                      suffix: const Icon(Icons.email_outlined),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25)),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                        borderSide: const BorderSide(color: Color(0xFF634AFD)),
                      ),
                    ),
                  ),
                  const SizedBox(height: 15),
                  TextField(
                    controller: passwordController,
                    decoration: InputDecoration(
                      hintText: "Password",
                      suffix: const Icon(Icons.lock_outline),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25)),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                        borderSide: const BorderSide(color: Color(0xFF634AFD)),
                      ),
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
                            "     Show password",
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
                  const SizedBox(height: 25),
                  ElevatedButton(
                    onPressed: () {
                      if (validator()) {
                        debugPrint("Every thing is Good!");
                      }
                    },
                    style: ButtonStyle(
                      shape:
                          MaterialStateProperty.all(ContinuousRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      )),
                      backgroundColor:
                          const MaterialStatePropertyAll(Color(0xFF634AFD)),
                      minimumSize:
                          MaterialStateProperty.all(const Size(327, 70)),
                    ),
                    child: const Text(
                      "Register",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontFamily: "Raleway-Bold",
                          fontWeight: FontWeight.bold),
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
                                  color: const Color(0xFFECEDF3),
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 155, top: 23),
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
                            color: const Color(0xFFF5F4F8),
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
                              color: const Color(0xFFF5F4F8),
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
                  //const SizedBox(height: 25),
                  Padding(
                    padding: const EdgeInsets.only(left: 75, top: 70),
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Container(
                              color: Colors.pink,
                            ),
                          ),
                        );
                      },
                      child: RichText(
                        text: const TextSpan(
                          text: "Already have an account? ",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.normal,
                            color: Color(0xFF53587A),
                            fontFamily: "Raleway-Medium",
                          ),
                          children: <TextSpan>[
                            TextSpan(
                              text: "Login",
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF634AFD),
                                fontFamily: "Raleway-Medium",
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  showToastMessage(String message) {
    // return Fluttertoast.showToast(
    //   msg: message,
    //   toastLength: Toast.LENGTH_SHORT,
    //   gravity: ToastGravity.BOTTOM,
    //   // timeInSecForIosWeb: 1,
    //   backgroundColor: Colors.black45,
    //   textColor: Colors.black26,
    //   fontSize: 16.0,
    // );

    return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        backgroundColor: (Colors.black54),
        elevation: 0,
        margin: const EdgeInsets.all(12),
        behavior: SnackBarBehavior.floating,
        duration: const Duration(seconds: 2),
        onVisible: () {
          debugPrint("onVisible ----->>> ");
        },
        // showCloseIcon: true,
        dismissDirection: DismissDirection.horizontal,
        action: SnackBarAction(
          label: 'dismiss',
          onPressed: () {},
        ),
      ),
    );
  }

  bool validator() {
    if (nameController.text.isEmpty) {
      showToastMessage("Please enter name");
      return false;
    } else if (!RegExp("[a-zA-Z]").hasMatch(nameController.text)) {
      showToastMessage("Please enter valid name");
      return false;
    } else if (emailController.text.isEmpty) {
      showToastMessage("Please enter email");
      return false;
    } else if (!RegExp(
            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
        .hasMatch(emailController.text)) {
      showToastMessage("Please enter valid email");
      return false;
    } else if (passwordController.text.isEmpty) {
      showToastMessage("Please enter password");
      return false;
    } else if (!RegExp(
            "^(?=.*[A-Z].*[A-Z])(?=.*[!@#\$&*])(?=.*[0-9].*[0-9])(?=.*[a-z].*[a-z].*[a-z]).{8}")
        .hasMatch(passwordController.text)) {
      showToastMessage("Please enter valid password");
      return false;
    } else {
      return true;
    }
  }
}
