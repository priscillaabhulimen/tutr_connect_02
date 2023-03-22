import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tutr_connect_02/core/navigation/pages.dart';
import 'package:tutr_connect_02/ui/base/base_view.dart';
import 'package:tutr_connect_02/ui/views/splash/view_model.dart';

class SplashView extends StatefulWidget {
  static MaterialPage page() {
    return MaterialPage(
        name: AppPages.splashPath,
        key: ValueKey(AppPages.splashPath),
        child: const SplashView());
  }

  const SplashView({Key? key}) : super(key: key);

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  Widget build(BuildContext context) {
    return BaseView<SplashViewModel>(
      model: SplashViewModel(),
      onModelReady: (model) => model.init(),
      onDispose: (model) => model.dispose(),
      builder: (context, model, _) {
        return SizedBox(
          width: 250.0,
          child: DefaultTextStyle(
            style: const TextStyle(fontSize: 30.0, fontFamily: 'Agne'),
            child: AnimatedTextKit(
              animatedTexts: [
                TypewriterAnimatedText('Welcome to TUTR CONNECT'),
              ],
              onTap: () {},
            ),
          ),
        );
        ;
      },
    );
  }
}
