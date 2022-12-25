import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:quiz_project/style/app_color.dart';
import 'package:quiz_project/style/constant.dart';
import 'package:quiz_project/ui/forget_password/message_page.dart';
import 'package:quiz_project/ui/forget_password/success.page.dart';
class CreatenewPassword extends StatefulWidget {
  const CreatenewPassword({Key? key}) : super(key: key);

  @override
  State<CreatenewPassword> createState() => _CreatenewPasswordState();
}

class _CreatenewPasswordState extends State<CreatenewPassword> {
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
                margin:const EdgeInsets.only(top: 30) ,
                height: 41,
                width: 41,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7),
                    color: const Color(0xffE8ECF4)
                ),
                child: Center(child: InkWell(child: const Icon(Icons.arrow_back_ios,color: Colors.black),
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (_)=> const messagePage()));
                  },
                ),
                ),
              ),
              const SizedBox(height: 28,),
              const Text('Create new password',style: TextStyle(fontSize: 30,color: Colors.black,fontWeight: FontWeight.bold),),
              const SizedBox(height: 10,),
              Column(
                children: [
                  Lottie.asset('images/createnewpassword.json')
                ],
              ),
              const SizedBox(height: 32),
              Container(
                child: AppTextField(
                    textFieldType: TextFieldType.NUMBER,
                    decoration:myInputDecoration.copyWith(
                      labelText: "New password",
                      hintText: "New password",
                      prefixIcon: const Icon(
                        Icons.numbers,color: AppColor.mainColor,),)
                ),
              ),
              const SizedBox(height: 15,),
              Container(
                child: AppTextField(
                    textFieldType: TextFieldType.NUMBER,
                    decoration:myInputDecoration.copyWith(
                      labelText: "Confirm password",
                      hintText: "confirm password",
                      prefixIcon: const Icon(
                        Icons.numbers,color: AppColor.mainColor,),)
                ),
              ),
              const SizedBox(height: 45,),
              Container(
                height: 56,
                width: 331,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7),
                  color: Colors.black,
                ),
                child: const Center(child: Text('Reset Password',style: TextStyle(fontSize: 15,color: Colors.white),)),
              ).onTap(()=>const SuccessPage().launch(context)),
            ],
          ),
        ),
      ),
    );
  }
}
