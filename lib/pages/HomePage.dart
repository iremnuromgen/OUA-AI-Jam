import 'package:flutter/material.dart';
import 'package:edulexia/colors/colors.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Anasayfa"),
        backgroundColor: AppColors.white,),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          color: AppColors.white,
          child: GridView(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, mainAxisSpacing: 10, crossAxisSpacing: 10),
            children: [
              Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: AppColors.orange,),
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.abc, size: 70, color: Colors.white,),
                  Text("Harfler", style: TextStyle(
                    fontFamily: "Poppins",
                    fontSize: 30,
                    color: Colors.white,
                  ),)
                ],
              ),
              ),
              Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: AppColors.pink,),
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.image, size: 70, color: Colors.white,),
                  Text("Resimler", style: TextStyle(
                    fontFamily: "Poppins",
                    fontSize: 30,
                    color: Colors.white,
                  ),)
                ],
              ),
              ),
              Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: AppColors.purple,),
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.gamepad, size:70, color: Colors.white,),
                  Text("Oyunlar", style: TextStyle(
                    fontFamily: "Poppins",
                    fontSize: 30,
                    color: Colors.white,
                  ),)
                ],
              ),
              ),
              Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: Colors.blue,),),
            ],
          ),
        ),
      ),
    );
  }
}