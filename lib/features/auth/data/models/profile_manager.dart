


import 'package:flutter/material.dart';
import 'package:pregnancy_app/features/auth/data/models/user.dart';

class ProfileManager extends ChangeNotifier{
    User _user=User(
       name: '',
       age: '',
       relationship: '',
       isHaveChildren: true,
       isPregnant: true
   );
  User get getUser=>_user;
  void addUser(User user){
    _user=user;
    print(_user.age);
    notifyListeners();
  }
  @override
  String toString() {
    print({
      'name':_user.name,
      'age':_user.age,
      'relationship':_user.relationship,
      'have children?':_user.isHaveChildren,
      'is pregnant?':_user.isPregnant,

    });
    return super.toString();
  }

}