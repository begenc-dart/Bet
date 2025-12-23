

import 'dart:developer';

import 'package:bet/src/core/network/dio_helper.dart';
import 'package:bet/src/features/Auth/Login/repository/dto/LoginDto.dart';

class Loginrepository {
final _dio = DioHelper.instance;
  
 
  Future<Map> login(Logindto data,void Function(String key, String newToken) updateTokenCallback) async {
    try {
      
      // log(sign.first_name.toString()+sign.last_name);
      final response = await _dio.post(
        "api/login",
        data: data.toJson(),
      );
       log(response.data.toString());
       log(response.statusCode.toString());
     
      if (response.statusCode == 200) {
        log("token write data");
         updateTokenCallback("token", response.data['token'].toString());
      }
      return response.data;
    } catch (e) {
      log(e.toString());
      throw Exception(e);
    }
  }
}