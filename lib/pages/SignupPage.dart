import 'package:flutter/material.dart';
import 'package:edulexia/colors/colors.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: const Text('Sign Up Page'),
        backgroundColor: AppColors.white,
      ),
    );
  }
}