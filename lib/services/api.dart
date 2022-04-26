import '../models/schedule_dho.dart';

abstract class Api {
  Future<ScheduleDho> getScheduleDho(String username, String password);
}
