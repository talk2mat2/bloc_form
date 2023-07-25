import 'dart:convert';

import 'package:app2/API/models/UserModel.dart';
import 'package:http/http.dart' as http;

class AppRepository {
  static String loginLik = 'https://dummyjson.com/auth/login';

  static loginUser({required String username, required String password}) async {
    var url = Uri.parse(loginLik);
    var body = {"username": username, "password": password};
    print('body is $body');
    Map<String, String> userHeader = {
      "Content-type": "application/json",
      "Accept": "application/json"
    };
    var response =
        await http.post(url, body: jsonEncode(body), headers: userHeader);
    if (response.statusCode == 200) {
      var jsonResponse = UserModel.fromJson(jsonDecode(response.body));
      List<UserModel> currentUser = List.empty(growable: true);
      currentUser.add(jsonResponse);
      print('users: ${jsonResponse.firstName}');
      return currentUser;
    } else {
      print('Request failed with status: ${response.statusCode}.');
      throw response;
    }
  }
}
