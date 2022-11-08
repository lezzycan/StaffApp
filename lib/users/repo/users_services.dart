import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:mvvm_example/users/models/user_list.model.dart';
import 'package:mvvm_example/users/repo/api_status.dart';
import 'package:mvvm_example/utils/constants.dart';

class UserService {
  static Future<Object> getData() async {
    try {
      var url = Uri.parse(Constants.BASE_URL);
      var response = await http.get(url);
      if (response.statusCode == 200) {
        return Success(
            code: 200, response: usersListModelFromJson(response.body));
      }
      return Failure(code: Constants.INVALID_RESPONSE, errorResponse: 'Invalid Response');
    } on HttpException {
      return Failure(code: Constants.NO_INTERNET, errorResponse: '  No internet');
    } on FormatException {
      return Failure(code: Constants.INVALID_FORMAT, errorResponse: 'Invalid Format');
    } catch (e) {
      return Failure(code: Constants.UNKNOWN_ERROR, errorResponse: 'Unknow error');
    }
  }
}
