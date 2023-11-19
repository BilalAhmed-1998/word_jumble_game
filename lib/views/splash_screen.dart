import 'package:assets_audio_player/assets_audio_player.dart';

import '../exports/index.dart';

class SplashScreen extends StatelessWidget {
  static const String routeName = '/';

  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
        splash: _buildSplashBody(context),
        nextScreen: const LoginScreen(),
        splashIconSize: Get.height,
        duration: 1000,
        disableNavigation: false,
        backgroundColor: const Color(0xff16072D));
  }

  Widget _buildSplashBody(BuildContext context) {
    return Scaffold(
        body: SplashTemplate(
      isShowLetters: true,
      isShowPurplePlanet: true,
      children: [
        Positioned(
          bottom: 180,
          left: -5,
          child: Image.asset(
            "assets/images/splash_screen/Blue Gem 2.png",
          ),
        ),
        //Logo  & Name//
        Center(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TweenAnimationBuilder<double>(
                tween: Tween<double>(begin: 0.0, end: 2),
                duration: const Duration(seconds: 5),
                builder: (context, value, _) => AnimatedRotation(
                  turns: value,
                  duration: const Duration(milliseconds: 500),
                  child: Image.asset(
                    "assets/images/logo.png",
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'World Jumble',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              ),
            ],
          ),
        ),
        // Loading bar //
        Positioned(
          bottom: 70,
          left: 110,
          right: 110,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: TweenAnimationBuilder<double>(
                tween: Tween<double>(begin: 0.0, end: 2),
                duration: const Duration(seconds: 4),
                builder: (context, value, _) => LinearProgressIndicator(
                      color: const Color(0xff18B6F3),
                      backgroundColor: const Color(0xff16072D),
                      value: value,
                      minHeight: 8,
                    )),
          ),
        )
      ],
    ));
  }
}
