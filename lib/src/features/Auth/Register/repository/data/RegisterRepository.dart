import 'dart:developer';

import 'package:bet/src/core/local/key_value_storage_service.dart';
import 'package:bet/src/core/network/dio_helper.dart';
import 'package:bet/src/features/Auth/Register/repository/dto/RegisterData.dart';


class RegisterApi {
final _dio = DioHelper.instance;
  final _keyValueStorageService = KeyValueStorageService();
 
  Future<Map> login(RegisterData data,void Function(String key, String newToken) updateTokenCallback) async {
    try {
      final future = _keyValueStorageService.getAuthToken("token");
      // log(sign.first_name.toString()+sign.last_name);
      final response = await _dio.post(
        "api/register",
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
      
      throw Exception(e);
    }
  }
}