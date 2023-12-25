import 'package:chilly_mobile_client/features/user/domain/user_entity.dart';
import 'package:flutter/material.dart';

abstract class UserChangeNotifier extends ChangeNotifier {
  void setUser(UserEntity user);

  UserEntity? get user;

  void clear();
}

class UserChangeNotifierImplementation extends UserChangeNotifier {
  UserEntity? _user;

  @override
  UserEntity? get user => _user;

  @override
  void setUser(UserEntity user) {
    _user = user;
    notifyListeners();
  }

  @override
  void clear() {
    _user = null;
  }
}
