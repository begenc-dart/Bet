
import 'dart:developer';

import 'package:bet/src/core/network/dio_helper.dart';
import 'package:bet/src/features/CuponPage/repository/dto/ticket_dto.dart';
import 'package:bet/src/features/MainPage/repository/dto/match_dto.dart';
import 'package:dio/dio.dart';

class MatchData {
   final _dio = DioHelper.instance;
  
  Future<MatchDto> getMatchData() async {
    try {
      final response = await _dio.get(
        "api/all-matches",
       
      );
     
      if (response.statusCode == 200) {
        // log(response.data.toString());
        MatchDto model =MatchDto.fromJson(response.data);
        return model;
      } else {
        throw Exception("Failed to post Credit card ${response.statusCode}");
      }
    } catch (e) {
      throw Exception(e);
    }
  }
}