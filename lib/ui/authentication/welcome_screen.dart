import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:quiz_project/style/app_color.dart';
import 'package:quiz_project/style/constant.dart';
import 'package:quiz_project/ui/authentication/sign_in.dart';
import '../../widgets/button_global.dart';
class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Lottie.asset('images/welcome.json'),
            const SizedBox(height: 20,),
            const Text(
              'Please Sign up or Log in\n to Continue',
               style:TextStyle(color: AppColor.titleColor,fontWeight: FontWeight.bold,fontSize: 20.0 ),maxLines: 2,textAlign: TextAlign.center,),
            const SizedBox(height: 10.0),
            ButtonGlobal(
                    buttonText: 'Sign In',
                    buttonTextColor: Colors.white,
                    buttonDecoration:myButtonDecoration,
              onPressed: ()=>const SignIn().launch(context),
            ),
              const SizedBox(height: 10.0,),
              ButtonGlobal(
                    buttonText: 'Sign Up',
                    buttonTextColor: AppColor.titleColor,
                    buttonDecoration:myButtonDecoration.copyWith(color: Colors.white,),
                onPressed: (){

                },
              ),
          ],
        ),
      ),
    );
  }
}


