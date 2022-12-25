import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:quiz_project/config/confige.dart';
import 'package:quiz_project/model/Sign_up_model.dart';
class AuthRepo{
  Future<bool> signInWithEmail(String email, String password) async {
    var uri= AppConfig.serverUrl+AppConfig.signInUrl;
    var response = await http.post(Uri.parse(uri),body: <String,String>{
      'email': email,
      'password': password,
    });
    var data = jsonDecode(response.body);
    if(response.statusCode==200){
      String token = data['data']['token'];
      print(token);
      return true;
    }else if(response.statusCode==400){
      throw Exception('Invalid email or password');
    }else{
      throw Exception('Something went wrong.Please try again');
    }
  }


  Future<bool> signUpWithEmail(String name, String email, String phone, String password) async {
    var uri= AppConfig.serverUrl+AppConfig.signUpUrl;
    var response = await http.post(Uri.parse(uri),body: <String,String>{
      'name': name,
      'email': email,
      'phone': phone,
      'password': password,
    });
    print(response.statusCode);
    var data = jsonDecode(response.body);
    if(response.statusCode==200){
      var decodedData = SignUpModel.fromJson(data);
      print(decodedData);
      return true;
    }else{
      throw Exception('Something went wrong.Please try again');
    }
  }
}