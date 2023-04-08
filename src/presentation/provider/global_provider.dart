import 'package:arzan/src/domain/entities/user_entity.dart';
import 'package:arzan/src/domain/usecases/get_user_detail.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class GlobalProvider extends ChangeNotifier {
  final GetUserDetail getUserDetail;
  GlobalProvider({required this.getUserDetail});

  UserEntity cahngeUser = UserEntity.empty();

  Future<void> getUser() async {
    try {
      var user = await getUserDetail.execute();
      cahngeUser = user.foldRight(UserEntity.empty(), (r, previous) => r);
      notifyListeners();
    } catch (err) {
      debugPrint(err.toString());
      notifyListeners();
    }
  }

  static GlobalProvider of(BuildContext context, {listen = true}) =>
      Provider.of<GlobalProvider>(context, listen: listen);
}
