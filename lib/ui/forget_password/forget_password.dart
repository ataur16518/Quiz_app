import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:quiz_project/style/app_color.dart';
import 'package:quiz_project/style/constant.dart';
import 'package:quiz_project/ui/authentication/sign_in.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:quiz_project/ui/forget_password/message_page.dart';
class ForgetPassword extends StatefulWidget {
  const ForgetPassword({Key? key}) : super(key: key);
  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}
class _ForgetPasswordState extends State<ForgetPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin:EdgeInsets.only(top: 30) ,
                height: 41,
                width: 41,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7),
                    color: Color(0xffE8ECF4)
                ),
                child: Center(child: InkWell(child: Icon(Icons.arrow_back_ios,color: Colors.black),
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (_)=> SignIn()));
                  },
                ),
                ),
              ),
              const SizedBox(height: 28,),
              Container(
                margin: const EdgeInsets.only(left: 20),
                height: 78,
                width: 300,
                child: const Text('Forgot Password?',style: TextStyle(color: Colors.black,fontSize: 30),),
              ),
              Container (
                margin: const EdgeInsets.only(left: 20),

               child: Column(
                 children: [
                   Lottie.asset('images/forgot-password.json'),
                 ],
               ),
              ),
              const SizedBox(height: 32,),
              Container(
                height: 56,
                width: 331,
                child: AppTextField(
                    textFieldType: TextFieldType.EMAIL,
                    decoration:myInputDecoration.copyWith(
                        labelText: "Email Address",
                        hintText: "Please Enter your email",
                        prefixIcon: const Icon(
                          Icons.email_sharp,color: AppColor.mainColor,),)
                ),
                // TextField(
                //   decoration: InputDecoration(
                //     suffixIcon:Icon(Icons.lock,color: Colors.blue,),
                //     filled: true,
                //     fillColor: Colors.white70,
                //       border: OutlineInputBorder(
                //       borderRadius: BorderRadius.circular(7),
                //     ),
                //     hintText: ('Enter your Email..'),
                //     labelText: "Email"
                //   ),
                // ),
              ),
              const SizedBox(height:36,),
              InkWell(
                child: Container(
                  height: 56,
                  width: 331,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(7),
                      color: Colors.black
                  ),
                  child:Center(child: Text('Send Code ',style: TextStyle(color: Colors.white),
                  ),
                  ),
                ),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (_)=>messagePage()));
                },
              ),
              const SizedBox(height: 70,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Remember Password?',style: TextStyle(fontSize: 15,color: Colors.grey),),
                  InkWell(
                    child: const Text('Login',style: TextStyle(fontSize: 15,color: Colors.green),
                    ),
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (_) => const SignIn()));
                    },
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
