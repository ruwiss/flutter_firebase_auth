import 'package:get_it/get_it.dart';
import 'package:login_screen/services/auth_service.dart';
import 'package:login_screen/services/provider/auth_provider.dart';

final locator = GetIt.instance;

void setupLocator() {
  locator.registerSingleton<AuthProvider>(AuthProvider());
  locator.registerSingleton<AuthService>(AuthService());
}