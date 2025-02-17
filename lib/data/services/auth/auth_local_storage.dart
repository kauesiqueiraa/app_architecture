import 'dart:convert';

import 'package:result_dart/result_dart.dart';
import 'package:sdf_app_architecture/data/services/local_storage.dart';
import 'package:sdf_app_architecture/domain/entities/user_entity.dart';

const _userKey = 'user';

class AuthLocalStorage {
  final LocalStorage _localStorage;

  AuthLocalStorage(this._localStorage);

  AsyncResult<LoggedUser> getUser() {
    return _localStorage
        .getData(_userKey)
        .map((json) => LoggedUser.fromJson(jsonDecode(json)));
  }

  AsyncResult<LoggedUser> saveUser(LoggedUser user) {
    return _localStorage
        .saveData(_userKey, jsonEncode(user))
        .pure(user);
  }

  AsyncResult<Unit> removeUser() {
    return _localStorage.removeData(_userKey);
  }
}