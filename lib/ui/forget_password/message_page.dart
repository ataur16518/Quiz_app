import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lottie/lottie.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:quiz_project/style/app_color.dart';
import 'package:quiz_project/ui/forget_password/forget_password.dart';
import 'package:quiz_project/ui/forget_password/new_password.dart';
class messagePage extends StatefulWidget {
  const messagePage({Key? key}) : super(key: key);

  @override
  State<messagePage> createState() => _messagePageState();
}

class _messagePageState extends State<messagePage> {
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
                    Navigator.push(context, MaterialPageRoute(builder: (_)=> ForgetPassword()));
                  },
                ),
                ),
              ),
              const SizedBox(height: 28,),
              const Text('OTP Verification',style: TextStyle(fontSize: 30),),
              const SizedBox(height: 10,),
             Center(
               child: Column(
                 children: [
                   Lottie.asset('images/otp.json',height: 350,fit: BoxFit.fill),
                 ],
               ),
             ),
              const SizedBox(height: 32,),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  children: [
                    Container(
                      height: 68,
                      width: 64,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: TextField(
                        onChanged: (value){
                          if(value.length==1){
                            FocusScope.of(context).nextFocus();
                          }
                        },
                        cursorColor: Colors.black,
                        style: Theme.of(context).textTheme.headline6,
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(1),
                          FilteringTextInputFormatter.digitsOnly,
                        ],
                      ),
                    ),
                    const SizedBox(width: 15),
                    Container(
                      height: 68,
                      width: 64,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: TextField(
                        onChanged: (value){
                          if(value.length==1){
                            FocusScope.of(context).nextFocus();
                          }
                        },
                        cursorColor: Colors.black,
                        style: Theme.of(context).textTheme.headline6,
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(1),
                          FilteringTextInputFormatter.digitsOnly,
                        ],
                      ),
                    ),
                    SizedBox(width: 15),
                    Container(
                      height: 68,
                      width: 64,
                      decoration: BoxDecoration(

                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: TextField(
                        onChanged: (value){
                          if(value.length==1){
                            FocusScope.of(context).nextFocus();
                          }
                        },
                        cursorColor: Colors.black,
                        style: Theme.of(context).textTheme.headline6,
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(1),
                          FilteringTextInputFormatter.digitsOnly,
                        ],
                      ),
                    ),
                    const SizedBox(width: 15),
                    Container(
                      height: 68,
                      width: 64,
                      decoration: BoxDecoration(

                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: TextField(
                        onChanged: (value){
                          if(value.length==1){
                            FocusScope.of(context).nextFocus();
                          }
                        },
                        cursorColor: Colors.black,
                        style: Theme.of(context).textTheme.headline6,
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(1),
                          FilteringTextInputFormatter.digitsOnly,
                        ],
                      ),
                    ),
                    SizedBox(width: 15),
                  ],
                ),
              ),
              const SizedBox(height:38 ,),
              Container(
                height: 56,
                width: 331,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7),
                  color: Colors.grey,
                ),
                child: Center(child: const Text('Verify',style: TextStyle(color: Colors.white,fontSize: 15),)),
              ).onTap(()=>const CreatenewPassword().launch(context)),
              const SizedBox(height: 50,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Didn’t received code?',style: TextStyle(fontSize: 15,color: Colors.grey),),
                  const Text('Resend',style: TextStyle(fontSize: 15,color: Color(0xff35C2C1)),
                  ).onTap(()=>ForgetPassword().launch(context)),
                ],
              ),

            ],
          ),
        ),
      ),
    );
  }
}
