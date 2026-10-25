import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:islami/core/utilies/colors.dart';

import '../home screen/home_screen.dart';

class IntroScreenDemo extends StatefulWidget {
  @override
  State<IntroScreenDemo> createState() => _IntroScreenDemoState();
}

class _IntroScreenDemoState extends State<IntroScreenDemo> {
  final _introKey = GlobalKey<IntroductionScreenState>();

  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      dotsDecorator: DotsDecorator(
        activeColor:ColorsApp.mainColor,
        activeSize: Size(22, 10),

        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(25)),
        ),
      ),
      globalBackgroundColor:ColorsApp.blackColor,
      key: _introKey,
      pages: [
        PageViewModel(
            title: '',
            bodyWidget: Column(
              children: [
                Image.asset('assets/images/Group 31.png'),
                SizedBox(height: 12,),
                Image.asset('assets/images/SCREEN1.png'),
                SizedBox(height: 79,),
                Text('Welcome To Islmi App' ,
                  style: TextStyle(color:ColorsApp.mainColor, fontWeight: FontWeight(700),fontSize: 24),),
              ],
            )),
        PageViewModel(
            title: '',
            bodyWidget: Column(
              children: [
                Image.asset('assets/images/Group 31.png'),
                SizedBox(height: 12,),
                Image.asset('assets/images/screen21.png'),
                SizedBox(height: 12,),
                Text('Welcome To Islmi App',style: TextStyle(color:ColorsApp.mainColor, fontWeight: FontWeight(700),fontSize: 24),),
                SizedBox(height: 12,),
Text("We Are Very Excited To Have You In Our\n                          Community",style:TextStyle(color:ColorsApp.mainColor, fontWeight: FontWeight(700),fontSize: 20),)
              ],
            )),
        PageViewModel(
            title: '',
            bodyWidget: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset('assets/images/Group 31.png'),
                SizedBox(height: 10,),
                Image.asset('assets/images/Frame 3.png'),
                SizedBox(height: 12,),
                Text('Reading the Quran',style: TextStyle(color:ColorsApp.mainColor, fontWeight: FontWeight(700),fontSize: 24),textAlign: TextAlign.center,),
                SizedBox(height: 12,),
Text("Read, and your Lord is the Most Generous",style:TextStyle(color:ColorsApp.mainColor, fontWeight: FontWeight(700),fontSize: 16),textAlign: TextAlign.center,)
              ],
            )),
        PageViewModel(
            title: '',
            bodyWidget: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset('assets/images/Group 31.png'),
                SizedBox(height: 10,),
                Image.asset('assets/images/Frame4.png'),
                SizedBox(height: 30,),
                Text('Bearish',style: TextStyle(color:ColorsApp.mainColor, fontWeight: FontWeight(700),fontSize: 24),textAlign: TextAlign.center,),
                SizedBox(height: 30,),
Text("Praise the name of your Lord, the Most High",style:TextStyle(color:ColorsApp.mainColor, fontWeight: FontWeight(700),fontSize: 16),textAlign: TextAlign.center,)
              ],
            )),
        PageViewModel(
            title: '',
            bodyWidget: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset('assets/images/Group 31.png'),
                SizedBox(height: 10,),
                Image.asset('assets/images/Frame 5.png'),
                SizedBox(height: 30,),
                Text('Holy Quran Radio',style: TextStyle(color:ColorsApp.mainColor, fontWeight: FontWeight(700),fontSize: 24),textAlign: TextAlign.center,),
                SizedBox(height: 15,),
Text("You can listen to the Holy Quran Radio through the application for free and easily",style:TextStyle(color:ColorsApp.mainColor, fontWeight: FontWeight(700),fontSize: 16),textAlign: TextAlign.center,)
              ],
            )),
      ],
      showNextButton: true,
      showDoneButton: true,
      showBackButton: true,
      next: const Text("Next", style: TextStyle(color: ColorsApp.mainColor)),
      done: const Text("Done", style: TextStyle(color: ColorsApp.mainColor)),
      back: const Text("Back", style: TextStyle(color: ColorsApp.mainColor)) ,
      onDone: () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (_) => HomeScreen()),
        );
      },
    );
  }
}