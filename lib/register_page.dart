import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController textEditingController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    var height = mediaQueryData.size.height;
    var width = mediaQueryData.size.width;
    return Scaffold(
      appBar: AppBar(backgroundColor: Color(0xff12327B),),
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
                      "Create Account",
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
                  top: height * .3,
                  left: width * .12,
                  child: SizedBox(
                    width: width * .8,
                    child:  TextField(
                      controller: textEditingController,
                      decoration: const InputDecoration(
                        labelText: "Full Name",
                        labelStyle: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: height * .4,
                  left: width * .12,
                  child: SizedBox(
                    width: width * .8,
                    child:  TextField(
                      controller: emailController,
                      decoration: const InputDecoration(
                        labelText: "Email",
                        labelStyle: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: height * .5,
                  left: width * .12,
                  child: SizedBox(
                    width: width * .8,
                    child:  TextField(
                      controller: passwordController,
                      decoration: const InputDecoration(
                        labelText: "Password",
                        labelStyle: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: width * .25,
                  bottom: height * .25,
                  child: SizedBox(
                      width: width * 0.5,
                      height: height * 0.06,
                      child: ElevatedButton(
                        onPressed: (){},
                        child: const Text("Create Account"),
                      )),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
