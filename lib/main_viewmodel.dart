import 'dart:async';

import 'package:flutter/material.dart';
import 'package:sdf_app_architecture/data/repositories/auth/auth_repository.dart';
import 'package:sdf_app_architecture/domain/entities/user_entity.dart';

class MainViewmodel extends ChangeNotifier {
  final AuthRepository _authRepository;

  User _user = const NotLoggedUser();
  User get user => _user;

  late final StreamSubscription _userSubscription;

  MainViewmodel(this._authRepository){
    _userSubscription = _authRepository.userObserver().listen((user) {
      _user = user;
      notifyListeners();
    });
  }

  @override
  void dispose() {
    _userSubscription.cancel();
    super.dispose();
  }
}