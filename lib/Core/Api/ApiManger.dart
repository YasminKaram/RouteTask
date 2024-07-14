import 'package:dio/dio.dart';
import 'package:routetask/Core/Api/Endpoints.dart';

class ApiManger{

  Dio dio=Dio();


  Future<Response>getData({Map<String, dynamic>? data}){
    return dio.get(Endpoints.BaseUrl);
  }
}