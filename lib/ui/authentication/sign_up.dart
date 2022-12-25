import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:lottie/lottie.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:quiz_project/Repo/auth_repo.dart';
import 'package:quiz_project/style/app_color.dart';
import 'package:quiz_project/style/constant.dart';
import 'package:quiz_project/ui/authentication/sign_in.dart';
import 'package:quiz_project/widgets/button_global.dart';
class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);
  @override
  State<SignUp> createState() => _SignUpState();
}
class _SignUpState extends State<SignUp> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Lottie.asset('images/oahmox5rjson.json'),
              SizedBox(height: 10.0),
              const Text('Sign Up',style: TextStyle(color: AppColor.mainColor,fontWeight: FontWeight.bold,fontSize: 25),),
              const SizedBox(height: 20.0),
              AppTextField(
                controller: nameController,
                  textFieldType: TextFieldType.NAME,
                  decoration:myInputDecoration.copyWith(labelText: "Name",hintText: "Please Enter your Name",prefixIcon: Icon(Icons.manage_accounts,color: AppColor.mainColor,))
              ),
              const SizedBox(height: 10.0),
              AppTextField(
                controller: emailController,
                  textFieldType: TextFieldType.EMAIL,
                  decoration:myInputDecoration.copyWith(labelText: "Email Address",hintText: "Please Enter your Email Address",prefixIcon: Icon(Icons.email_sharp,color: AppColor.mainColor,))
              ),
              const SizedBox(height: 10.0),
              AppTextField(
                controller: phoneController,
                  textFieldType: TextFieldType.PHONE,
                  decoration:myInputDecoration.copyWith(labelText: "Phone Number",hintText: "Please Enter your Phone Number",prefixIcon: Icon(Icons.numbers,color: AppColor.mainColor,))
              ),
              const SizedBox(height: 10.0),
              AppTextField(
                controller: passwordController,
                  textFieldType: TextFieldType.PASSWORD,
                  decoration:myInputDecoration.copyWith(labelText: "password",hintText: "Please Enter your password",prefixIcon: Icon(Icons.lock,color: Colors.teal,),)
              ),
              const SizedBox(height: 10.0),
              // AppTextField(
              //     textFieldType: TextFieldType.PASSWORD,
              //     decoration:myInputDecoration.copyWith(labelText: "Comfirm Password",hintText: "Please Enter your Confirm password",prefixIcon: Icon(Icons.lock,color: Colors.teal,),)
              // ),
              const SizedBox(height: 20),
              ButtonGlobal(buttonText: 'Sign Up', buttonDecoration: myButtonDecoration, buttonTextColor: Colors.white, onPressed: ()async{
                try{
                  EasyLoading.show(status: 'Sign Up..');
                  bool status =await AuthRepo().signUpWithEmail(nameController.text, emailController.text, phoneController.text, passwordController.text);
                  if(status){
                    EasyLoading.showSuccess('Sign Up Successful');
                    const SignIn().launch(context);
                  }else{
                    EasyLoading.showError('Sign Up failed');
                  }
                }catch(e){
                  EasyLoading.showError(e.toString());
                }
              }),
            ],
          ),
        ),
      ),
    );
  }
}
