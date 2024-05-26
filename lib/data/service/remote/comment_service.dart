import 'dart:developer';

import 'package:task_api_search/data/models/remote/comment_response.dart';
import 'package:task_api_search/utils/constants/endpoints.dart';
import 'package:task_api_search/utils/extensions/int_extension.dart';
import 'package:task_api_search/utils/network/client_dio.dart';

class CommentService {
  Future<List<CommentResponse>> getComments() async {
    try{
      final response = await clientDio.get(Endpoints.comments);
      final List data = response.data;
      log("Service Data: $data");
      log("Service Response: ${response.toString()}");
      if (response.statusCode.isSuccess) {
        return data.map((e)=> CommentResponse.fromJson(e)).toList();
      }
      throw Exception();
    }catch(e){
      throw Exception();
    }
        
  }
}
