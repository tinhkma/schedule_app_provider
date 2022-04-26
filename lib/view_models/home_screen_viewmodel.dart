import 'package:flutter/cupertino.dart';
import 'package:schedule_provider/locator.dart';
import 'package:schedule_provider/models/schedule_dho.dart';
import 'package:schedule_provider/services/api.dart';

class HomeScreenViewModel with ChangeNotifier {
  final Api _api = getIt<Api>();
  ScheduleDho _scheduleDho = ScheduleDho();
  bool loading = false;

  ScheduleDho get scheduleDho => _scheduleDho;

  void loadData(String username, String password) async {
    loading = true;
    print('xxxxxxxx $loading');
    _scheduleDho = await _api.getScheduleDho(username, password);
    loading = false;
    notifyListeners();
    print('xxxxxxxx $loading');
  }
}