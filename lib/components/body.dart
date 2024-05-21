import 'package:edulexia/colors/colors.dart';
import 'package:edulexia/pages/LoginPage.dart';
import 'package:edulexia/pages/SignupPage.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      color: AppColors.white,
      height: size.height,
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const SizedBox(height: 20),
          Image.asset(
            'assets/images/welcome-image.png',
            height: 300,
            width: 300,
          ),
          const Text(
            "Hoş Geldiniz",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontFamily: "Poppins",
              fontSize: 35,
            ),
          ),
          const SizedBox(height: 20),
          SizedBox(
            width: 250,
            height: 55,
            child: ElevatedButton(
              onPressed: (){
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => const Login()));
              },
              style: ElevatedButton.styleFrom(
                primary: AppColors.pink,
                onPrimary: Colors.white,
                shadowColor: Colors.black,
              ), 
              child: const Text(
                "Giriş Yap",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontFamily: "Poppins",
                  fontSize: 25,
                ),
              ),
            ),
          ),
          const SizedBox(height: 10),
          SizedBox(
            width: 250,
            height: 55,
            child: ElevatedButton(
              onPressed: (){
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => const Signup()));
              },
              style: ElevatedButton.styleFrom(
                primary: AppColors.white,
                onPrimary: Colors.black,
                shadowColor: Colors.black,
              ), 
              child: const Text(
                "Kayıt Ol",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontFamily: "Poppins",
                  fontSize: 25,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}