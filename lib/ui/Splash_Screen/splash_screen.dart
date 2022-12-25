import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:nb_utils/nb_utils.dart';

import '../../style/app_color.dart';
import '../authentication/welcome_screen.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}
class _SplashScreenState extends State<SplashScreen> {
  Future<void>init()async {
    await Future.delayed(const Duration(seconds: 5)).then((value) => const WelcomeScreen().launch(context,isNewTask: true,pageRouteAnimation: PageRouteAnimation.SlideBottomTop));
  }
  @override
  void initState() {
   init();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.mainColor,
      body: Center(
        child: CircleAvatar(
          radius: 100.0,
          backgroundColor: Colors.white,
          child: Lottie.asset("images/quiz.json"),
        ),
      ),
    );
  }
}
