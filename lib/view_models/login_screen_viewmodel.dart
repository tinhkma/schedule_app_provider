import 'package:flutter/cupertino.dart';
import 'package:schedule_provider/models/schedule_dho.dart';
import 'package:schedule_provider/services/api.dart';

import '../locator.dart';

class LoginScreenViewModel extends ChangeNotifier {
  final Api _api = getIt<Api>();
  ScheduleDho _scheduleDho = ScheduleDho();

  void loadData() async {
    await _loadSchedule();
    print("xxxxxxxx LoginScreenViewModel loadData");
    _scheduleDho = await _api.getScheduleDho("AT140147", "xuantinhb3");
    notifyListeners();
  }

  Future<void> _loadSchedule() async {

  }

}