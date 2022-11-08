import 'package:flutter/material.dart';
import 'package:mvvm_example/users/models/user_error.dart';
import 'package:mvvm_example/users/repo/users_services.dart';
import '../models/user_list.model.dart';
import '../repo/api_status.dart';

class UsersViewModel extends ChangeNotifier {
  bool _isLoading = false;
  List<UsersListModel> _usersListModel = [];
  UserError? _userError;

  bool get isLoading => _isLoading;
  List<UsersListModel> get usersListModel => _usersListModel;
  UserError? get userError => _userError;

  setLoading(bool isLoading) async {
    _isLoading = isLoading;
    notifyListeners();
  }

  setUsersListModel(List<UsersListModel> usersListModel) {
    _usersListModel = usersListModel;
  }

  setUserError(UserError userError) {
    _userError = userError;
  }

  getUsers() async {
    setLoading(true);
    var response = await UserService.getData();

    if (response is Success) {
      setUsersListModel(response.response as List<UsersListModel>);
    }
  }
}
