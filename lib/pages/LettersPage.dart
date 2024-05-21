import 'package:flutter/material.dart';
import 'package:edulexia/colors/colors.dart';

class Letters extends StatelessWidget {
  const Letters({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: const Text('Harfler',
        style: TextStyle(
          fontFamily: "Poppins",
          fontSize: 25,
        ),),
        backgroundColor: AppColors.white,
      ),
      body: Container(
        
      ),
    );
  }
}