import 'package:a_flutter_form/entity/user_entity.dart';
import 'package:flutter/material.dart';

class UserProvider extends ChangeNotifier {
  UserEntity? userEntity;

  UserProvider({this.userEntity});

  void updateUser(UserEntity userEntity) {
    this.userEntity = userEntity;
    notifyListeners();
  }

  void clearUser() {
    userEntity = null;
    notifyListeners();
  }
}
