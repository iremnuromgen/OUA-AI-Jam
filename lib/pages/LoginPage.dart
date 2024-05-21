import 'package:edulexia/pages/HomePage.dart';
import 'package:flutter/material.dart';
import 'package:edulexia/colors/colors.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              'assets/images/login.png',
              height: 300,
              width: 300,
            ),
            const Text(
              "GİRİŞ",
              style: TextStyle(
                fontFamily: "Poppins",
              ),
            ),
            const TextFieldContainer(
              child: TextField(
                decoration: InputDecoration(
                  icon: Icon(Icons.person, color: AppColors.pink,),
                  hintText: "E-mail adresinizi giriniz",
                  border: InputBorder.none,
                ),
              ),
            ),
            const TextFieldContainer(
              child: TextField(
                decoration: InputDecoration(
                  icon: Icon(Icons.lock, color: AppColors.pink,),
                  hintText: "Şifrenizi giriniz",
                  border: InputBorder.none,
                ),
              ),
            ),
            SizedBox(
            width: 250,
            height: 55,
            child: ElevatedButton(
              onPressed: (){
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => const Home()));
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
          ],
        ),
      ),
    );
  }
}

class TextFieldContainer extends StatelessWidget {
  final Widget child;
  const TextFieldContainer({
    super.key, required this.child,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      width: size.width * 0.8,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(29),
        border: Border.all(
          color: AppColors.pink,
          width: 2,
        )
      ),
      child: child,
    );
  }
}