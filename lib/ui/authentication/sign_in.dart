import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:lottie/lottie.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:quiz_project/Repo/auth_repo.dart';
import 'package:quiz_project/style/app_color.dart';
import 'package:quiz_project/style/constant.dart';
import 'package:quiz_project/ui/authentication/homePage.dart';
import 'package:quiz_project/ui/authentication/sign_up.dart';
import 'package:quiz_project/ui/forget_password/forget_password.dart';
import 'package:quiz_project/widgets/button_global.dart';
class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);
  @override
  State<SignIn> createState() => _SignInState();
}
class _SignInState extends State<SignIn> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController= TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                      Lottie.asset('images/login.json'),
                      const SizedBox(height: 20.0),
                      const Text('Sign in',style: TextStyle(color: AppColor.mainColor,fontWeight: FontWeight.bold,fontSize: 25),),
                      const SizedBox(height: 20.0),
                      Card(
                        child: AppTextField(
                                textFieldType: TextFieldType.EMAIL,
                                      controller: emailController,
                                      decoration:myInputDecoration.copyWith(labelText: "Email Address",hintText: "Please Enter your Email Address",prefixIcon: Icon(Icons.email_sharp,color: AppColor.mainColor,))
                            ),
                      ),
                      const SizedBox(height: 10.0),
                      Card(
                        child: AppTextField(
                            textFieldType: TextFieldType.PASSWORD,
                            controller: passwordController,
                            decoration:myInputDecoration.copyWith(labelText: "password",hintText: "Please Enter your password",prefixIcon: const Icon(Icons.lock,color: Colors.teal,),)
                        ),
                      ),
                      const SizedBox(height: 20),
                      ButtonGlobal(buttonText: 'Sign In', buttonDecoration: myButtonDecoration, buttonTextColor: Colors.white ,onPressed: ()async{
                        try{
                          EasyLoading.show(status: 'Sign In..');
                          bool status =await AuthRepo().signInWithEmail(emailController.text,passwordController.text);
                        if(status){
                          EasyLoading.showSuccess('Sign In Successful');
                          const Home().launch(context);
                        }else{
                          EasyLoading.showError('Sign In failed');
                        }
                        }catch(e){
                            EasyLoading.showError(e.toString());
                        }
                      }),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                     const Text('Forget Password').onTap(()=>const ForgetPassword().launch(context)),
                  ],
                ),
                const SizedBox(height: 10.0),
                const Text('Or'),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Create a New Account?'),
                    const SizedBox(width: 4.0),
                    const Text('SignUp',
                      style: TextStyle(
                          color: Colors.blue,
                          fontSize: 15,fontWeight: FontWeight.bold),
                    ).onTap(()=>const SignUp().launch(context)),
                  ],
                ),
                const SizedBox(height: 20.0),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    children: [
                      Container(
                        height: 68,
                        width: 65,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('images/ap.jpg'),
                            )
                        ),
                      ),
                      const SizedBox(width: 30),
                      Container(
                        height: 68,
                        width: 65,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('images/fff.jpg'),
                            )
                        ),
                      ),
                      const SizedBox(width: 30),
                      Container(
                        height: 68,
                        width: 65,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('images/gg.jpg'),
                            )
                        ),
                      ),
                    ],
                  ),
                )
              ],
             ),
          ),
        ),
      ),
    );
  }
}
