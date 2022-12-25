import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:quiz_project/ui/authentication/sign_in.dart';
class SuccessPage extends StatefulWidget {
  const SuccessPage({Key? key}) : super(key: key);
  @override
  State<SuccessPage> createState() => _SuccessPageState();
}
class _SuccessPageState extends State<SuccessPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                Lottie.asset('images/successful.json',height: 350,fit: BoxFit.fill),
              ],
            ),
            SizedBox(height: 35),
            Text('Register Success',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 26),),
            SizedBox(height: 8),
            const Center(child: Text('Your register  has been successfully.',style: TextStyle(color: Colors.grey,fontSize: 15),
                textAlign: TextAlign.center),
            ),
            SizedBox(height: 40,),
            InkWell(
              child: Container(
                height: 56,
                width: 331,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7),
                  color: Colors.black,
                ),
                child: Center(child: const Text('Back to Home',style: TextStyle(fontSize:15 ,color: Colors.white),)),
              ),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (_)=>SignIn()));
              },
            )
          ],
        ),
      ),
    );
  }
}
