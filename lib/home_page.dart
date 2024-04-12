import 'package:flutter/material.dart';
import 'package:manshopping/login_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    var height = mediaQueryData.size.height;
    var width = mediaQueryData.size.width;

    return Scaffold(
      body: SafeArea(
        child: Container(
          height: height,
          width: width,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/splashscreen.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: Stack(
            children: [
              Positioned(
                left: width*.15,
                bottom: height*.3,
                child: SizedBox(
                  width: width*0.8,
                  height: height*.1,
                  child: const Text(
                    "Mens Fashion",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 32,
                      color: Color(0xffffffff),
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: height*.2,
                left: width*.31,
                child: SizedBox(
                  width: width*0.5,
                  height: height*.07,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) => const LoginPage()));
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xffffffff),
                      shape: const BeveledRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(2))
                      ),
                    ),
                    child: const Text(
                      "Get Started",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff12327B),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
