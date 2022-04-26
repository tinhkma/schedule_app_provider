import 'package:get_it/get_it.dart';
import 'package:schedule_provider/services/api.dart';
import 'package:schedule_provider/services/schedule_api.dart';
import 'package:schedule_provider/view_models/home_screen_viewmodel.dart';
import 'package:schedule_provider/view_models/login_screen_viewmodel.dart';

GetIt getIt = GetIt.instance;

void setupServiceLocator() {
  getIt.registerLazySingleton<Api>(() => ScheduleApi());

  getIt.registerFactory<HomeScreenViewModel>(() => HomeScreenViewModel());
  getIt.registerFactory<LoginScreenViewModel>(() => LoginScreenViewModel());
}