import '../exports/index.dart';

class SplashScreen extends StatelessWidget {
  static const String routeName = '/splashScreen';

  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _buildSplashBody(context);
  }

  Widget _buildSplashBody(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        //background dark //
        Positioned(
          height: Get.height,
          width: Get.width,
          child: Image.asset(
            "assets/images/splash_screen/splash dark background.png",
            fit: BoxFit.fitWidth,
          ),
        ),
        //background Stars //
        Positioned(
          height: Get.height,
          width: Get.width,
          child: Image.asset(
            "assets/images/splash_screen/splash stars.png",
            fit: BoxFit.fitWidth,
          ),
        ),
        // W //
        Positioned(
          bottom: 210,
          right: 0,
          child: Image.asset(
            "assets/images/splash_screen/w.png",
            fit: BoxFit.fitWidth,
          ),
        ),
        //BiG planet //
        Positioned(
          bottom: 0,
          right: 0,
          child: Image.asset(
            "assets/images/splash_screen/Big Planet 2.png",
          ),
        ),
        // Z//
        Positioned(
          top: 5,
          left: 85,
          child: Image.asset(
            "assets/images/splash_screen/Z.png",
          ),
        ),
        //Purple Planet //
        Positioned(
          top: 0,
          left: 0,
          child: Image.asset(
            "assets/images/splash_screen/Purple Planet.png",
          ),
        ),
        // A //
        Positioned(
          bottom: 15,
          left: 15,
          child: Image.asset(
            "assets/images/splash_screen/A.png",
          ),
        ),
        // E //
        Positioned(
          top: 300,
          left: 0,
          child: Image.asset(
            "assets/images/splash_screen/E.png",
          ),
        ),
        // S //
        Positioned(
          top: 130,
          right: 0,
          child: Image.asset(
            "assets/images/splash_screen/S.png",
          ),
        ),
        // Blue Planet //
        Positioned(
          top: 180,
          right: 0,
          child: Image.asset(
            "assets/images/splash_screen/Blue Planet 2.png",
          ),
        ),
        // Blue Gem 1 //
        Positioned(
          top: 50,
          right: 80,
          child: Image.asset(
            "assets/images/splash_screen/Blue Gem 1.png",
          ),
        ),
        // Blue Gem 2 //
        Positioned(
          bottom: 180,
          left: -5,
          child: Image.asset(
            "assets/images/splash_screen/Blue Gem 2.png",
          ),
        ),

        //Logo //
        Positioned(
          bottom: 180,
          left: -5,
          child: Image.asset(
            "assets/images/splash_screen/Blue Gem 2.png",
          ),
        ),
        //Game Name //
        Center(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/images/logo.png",
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
                tween: Tween<double>(begin: 0.0, end: 1),
                duration: const Duration(seconds: 5),
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

// AnimatedSplashScreen(
//         splash: _buildSplashBody(context),
//         nextScreen: const Home(),
//         splashTransition: SplashTransition.slideTransition,
//         splashIconSize: Get.height,
//         backgroundColor: const Color(0xff16072D));
