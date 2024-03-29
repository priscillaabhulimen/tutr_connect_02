import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:tutr_connect_02/core/services/locator.dart';
import 'package:tutr_connect_02/root_widget.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  setUpLocator();

  runZonedGuarded(() async {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    runApp(const TutrConnectApp(isDebug: false));
  }, (exception, stackTrace) async {
    // await Sentry.captureException(exception, stackTrace: stackTrace);
  });
}
