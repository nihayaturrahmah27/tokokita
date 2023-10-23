// ignore_for_file: unused_import

import 'package:tokokita/helpers/user_info.dart';

class Login {
  int? code;
  bool? status;
  String? token;
  int? userID;
  String? userEmail;

  Login({this.code, this.status, this.token, this.userID, this.userEmail});

  factory Login.fromJson(Map<String, dynamic> obj) {
    return Login(
      code: obj['code'],
      status: obj['status'],
      token: obj['data']['token'],
      userID: int.parse(obj['data']['user']['id']),
      userEmail: obj['data']['user']['email'],
    );
  }
}
