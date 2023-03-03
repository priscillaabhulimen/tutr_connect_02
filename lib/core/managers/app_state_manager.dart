import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tutr_connect_02/core/managers/disposable_provider.dart';

class AppStateManager extends DisposableProvider {
  bool _initialised = false;

  bool get isInitialised => _initialised;

  void initializeApp() {
    _initialised = true;
    notifyListeners();
  }

  void closeApp() {
    _initialised = false;

    SystemNavigator.pop();
    notifyListeners();
  }

  @override
  void disposeValues() {
    // TODO: implement disposeValues
  }
}
