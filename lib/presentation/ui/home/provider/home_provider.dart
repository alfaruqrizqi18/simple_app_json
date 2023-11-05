import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:simple_app_json/models/user_model.dart';
import 'package:simple_app_json/presentation/ui/home/state/home_state.dart';

class HomeProvider extends ChangeNotifier {
  HomeState state = HomeState(users: []);

  loadUserFromJson() async {
    final json = await rootBundle.loadString('assets/json/data.json');
    final result = jsonDecode(json);

    state.users.clear();

    for (var i = 0; i < result.length; i++) {
      var item = UserModel.fromJson(result[i]);
      state.users.add(item);
    }

    notifyListeners();
  }

  List<UserModel> searchUser({required String query}) {
    return state.users.where((element) => element.firstName == query).toList();
  }

  updateUser({required UserModel user}) {
    int getIndex = state.users.indexWhere((element) => user.id == element.id);
    state.users[getIndex] = user;
    notifyListeners();
  }
}
