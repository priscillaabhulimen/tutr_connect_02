import 'package:flutter/material.dart';
import 'package:tutr_connect_02/utils/app_theme.dart';
import 'package:oktoast/oktoast.dart';
import 'package:provider/provider.dart';
import 'core/providers/setup.dart';
import 'core/services/locator.dart';
import 'core/services/navigation_service.dart';
import 'core/navigation/app_router.dart';
import 'core/managers/app_state_manager.dart';

class TutrConnectApp extends StatefulWidget {
  final bool isDebug;
  const TutrConnectApp({Key? key, this.isDebug = true}) : super(key: key);

  @override
  State<TutrConnectApp> createState() => _TutrConnectAppState();
}

class _TutrConnectAppState extends State<TutrConnectApp> {
  final _appStateManager = AppStateManager();

  late AppRouter _appRouter;

  @override
  void initState() {
    super.initState();
    _appRouter = AppRouter(
      appStateManager: _appStateManager,
    );
  }

  final GlobalKey<NavigatorState> _navigatorKey =
      locator<NavigationService>().navigatorKey;

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => _appStateManager,
        ),
        ...providers,
      ],
      child: OKToast(
        child: MaterialApp(
          navigatorKey: _navigatorKey,
          debugShowCheckedModeBanner: widget.isDebug,
          darkTheme: AppTheme.darkTheme(),
          theme: AppTheme.lightTheme(),
          home: Router(
            routerDelegate: _appRouter,
            backButtonDispatcher: RootBackButtonDispatcher(),
          ),
        ),
      ),
    );
  }
}
