import 'package:get_it/get_it.dart';
import 'navigation_service.dart';

GetIt locator = GetIt.instance;

Future<void> setUpLocator() async {
  locator.registerLazySingleton<NavigationService>(() => NavigationService());

  
  /*TODO: setup services
  For example:
     locator.registerLazySingleton<AuthService>(
      () => AuthServiceImpl());
  */

}