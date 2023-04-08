import 'dart:convert';

import 'package:arzan/src/core/error/failures.dart';

import '/src/data/models/user_mode.dart';
import 'package:http/http.dart' as http;

abstract class ApiRemoteDataSource {
  Future<UserModel> getRometeUserDetal();
}

class ApiRemoteDataSourceImpl implements ApiRemoteDataSource {
  final http.Client httpClient;
  ApiRemoteDataSourceImpl(this.httpClient);
  @override
  Future<UserModel> getRometeUserDetal() async {
    final url = Uri.parse("https://tagandurdyb.github.io/api_demo/");
    final response = await httpClient
        .get(url, headers: {"Content-Type": "applocation/json"});
    if(response.statusCode==200){
      return UserModel.frowJson(json.decode(response.body));
    }    else{
      throw ServerFailure();
    }
  }
}
