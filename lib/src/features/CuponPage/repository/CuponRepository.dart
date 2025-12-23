
import 'dart:developer';

import 'package:bet/src/core/network/dio_helper.dart';
import 'package:bet/src/features/CuponPage/repository/dto/ticket_dto.dart';
import 'package:dio/dio.dart';

class Cuponrepository {
   final _dio = DioHelper.instance;
  
  Future<TicketDto> getFavourityProduct() async {
    try {
      final response = await _dio.get(
        "api/ticket",
        options: Options(extra: {'requiresAuthToken': true}),
      );
     
      if (response.statusCode == 200) {
        
        TicketDto model =TicketDto.fromJson(response.data);
        return model;
      } else {
        throw Exception("Failed to post Credit card ${response.statusCode}");
      }
    } catch (e) {
      throw Exception(e);
    }
  }
}