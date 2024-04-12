import 'package:flutter/material.dart';
import 'package:manshopping/register_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    var height = mediaQueryData.size.height;
    var width = mediaQueryData.size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff12327B),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            height: height,
            width: width,
            decoration: const BoxDecoration(color: Color(0xff12327B)),
            child: Stack(
              alignment: AlignmentDirectional.center,
              children: [
                Positioned(
                  left: width * .11,
                  top: height * .2,
                  child: SizedBox(
                    width: width * .8,
                    height: height * .2,
                    child: const Text(
                      "Welcome Back",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        color: Color(0xffffffff),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: height * .4,
                  left: width * .12,
                  child: SizedBox(
                    width: width * .8,
                    child: const TextField(
                      decoration: InputDecoration(
                        labelText: "Email",
                        labelStyle: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: height * .3,
                  left: width * .12,
                  child: SizedBox(
                    width: width * .8,
                    child: const TextField(
                      decoration: InputDecoration(
                        labelText: "Password",
                        labelStyle: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: width * .25,
                  bottom: height * .42,
                  child: SizedBox(
                      width: width * 0.5,
                      height: height * 0.06,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: const Text("Log in"),
                      )),
                ),
                Positioned(
                  bottom: height * .32,
                  left: width * .25,
                  child: SizedBox(
                    height: height * 0.06,
                    width: width * 0.5,
                    child: ElevatedButton(
                      onPressed: () {Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) => const RegisterPage()));},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xff12327B),
                        side: const BorderSide(color: Colors.white, width: 2),
                      ),
                      child: const Text(
                        "Create Account",
                        style: TextStyle(
                          color: Color(0xffffffff),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: height * .2,
                  left: width * .1,
                  child: SizedBox(
                    width: width * .8,
                    height: height * .05,
                    child: TextButton(
                      onPressed: () {},
                      child: const Text(
                        "Forgot Your Password",
                        style: TextStyle(color: Color(0xffffffff)),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
