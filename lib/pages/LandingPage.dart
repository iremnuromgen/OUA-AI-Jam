import 'package:edulexia/pages/WelcomePage.dart';
import 'package:flutter/material.dart';
import 'package:edulexia/colors/colors.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  final PageController _pageController = PageController(initialPage: 0);
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: AppColors.white,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20, top: 20),
            child: InkWell(
              onTap: (){
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => const WelcomeScreen()));
              },
              child: const Text('Geç', style: TextStyle(
                color: Colors.grey,
                fontSize: 16.0,
                fontWeight: FontWeight.w400,
              ),),
            ),
          )
        ],
      ),
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          PageView(
            onPageChanged: (int page){
              setState(() {
                currentIndex = page;
              });
            },
            controller: _pageController,
            children: const [
              createPage(image: 'assets/images/panda1.png',
              title: "Merhaba, Ben Lexi. Edulexia'ya Hoş Geldin!",
              ),
              createPage(title: "Edulexia, disleksiye sahip çocuklar için özel olarak tasarlanmış bir eğitim uygulamasıdır.",
              image: 'assets/images/panda2.png',
              ),
              createPage(title: "Görsel ve ses tabanlı öğrenme yöntemleriyle kelimeleri, harfleri ve hikayeleri keşfetmeye hazır mısın?",
              image: 'assets/images/panda3.png',
              ),
            ],
          ),
          Positioned(
            bottom: 80,
            left: 30,
            child: Row(
              children: _buildIndicator(),
            ),),
          Positioned(
            bottom: 60,
            right: 30,
            child: Container(
              padding: const EdgeInsets.all(4),
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: AppColors.pink,
              ),
              child: IconButton(
                onPressed: (){
                  setState(() {
                    if(currentIndex < 2){
                      currentIndex++;
                      if(currentIndex < 3){
                        _pageController.nextPage(duration: const Duration(milliseconds: 300), curve: Curves.easeIn);
                      }
                      else
                      {
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => const WelcomeScreen()));
                      }
                    }
                  });
                }, 
                icon: const Icon(Icons.arrow_forward_ios, size: 24, color: Colors.white,)),
            ),
          ),
        ],
      ),
    );
  }

  Widget _indicator(bool isActive){
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      height: 10.0,
      width: isActive ? 20 : 8,
      margin: const EdgeInsets.only(right: 5.0),
      decoration: BoxDecoration(
        color: AppColors.pink,
        borderRadius: BorderRadius.circular(5),
      ),
    );
  }

  List<Widget> _buildIndicator(){
    List<Widget> indicators = [];

    for(int i = 0; i < 3; i++){
      if(currentIndex == i){
        indicators.add(_indicator(true));
      }
      else
      {
        indicators.add(_indicator(false));
      }
    }

    return indicators;
  }
}

class createPage extends StatelessWidget {
  final String image;
  final String title;
  const createPage({
    super.key, required this.image, required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 50, right: 50, bottom: 80),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(height: 20,),
          Text(title,
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 25,
            fontFamily: "Poppins",
            fontWeight: FontWeight.bold
          ),
          ),
          SizedBox(height: 300, child: Image.asset(image),),
        ],
      ),
    );
  }
}

