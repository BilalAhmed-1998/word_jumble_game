import '../exports/index.dart';

class SplashTemplate extends StatelessWidget {
  bool isShowLetters;
  bool isShowPurplePlanet;
  bool onlyBackGroundStars;
  bool isShowAppBar;
  bool appBarButtonArrow;
  bool showLeadingAppBarButton;
  List<Widget>? children;
  SplashTemplate(
      {super.key,
      this.children,
      this.isShowLetters = false,
      this.showLeadingAppBarButton = true,
      this.isShowPurplePlanet = false,
      this.isShowAppBar = false,
      this.appBarButtonArrow = false,
      this.onlyBackGroundStars = false});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Stack(alignment: AlignmentDirectional.center, children: [
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
        if (!onlyBackGroundStars) ...[
          // W //
          if (isShowLetters)
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
          if (isShowLetters)
            Positioned(
              top: 5,
              left: 85,
              child: Image.asset(
                "assets/images/splash_screen/Z.png",
              ),
            ),
          //Purple Planet //
          if (isShowPurplePlanet)
            Positioned(
              top: 0,
              left: 0,
              child: Image.asset(
                "assets/images/splash_screen/Purple Planet.png",
              ),
            ),
          // A //
          if (isShowLetters)
            Positioned(
              bottom: 15,
              left: 15,
              child: Image.asset(
                "assets/images/splash_screen/A.png",
              ),
            ),
          // E //
          if (isShowLetters)
            Positioned(
              top: 300,
              left: 0,
              child: Image.asset(
                "assets/images/splash_screen/E.png",
              ),
            ),
          // S //
          if (isShowLetters)
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
        ],
        //children//
        ...?children,

        if (isShowAppBar) _buildAppBar(context),
      ]),
    );
  }

  Widget _buildAppBar(BuildContext context) {
    return Positioned(
      top: 56,
      left: 10,
      child: SizedBox(
        width: Get.width,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            (showLeadingAppBarButton)
                ? CustomGradientContainer(
                    height: 35,
                    width: 35,
                    onPressed: () {
                      appBarButtonArrow
                          ? Get.back()
                          : Get.offAllNamed(AppRoutes.HOME_SCREEN);
                    },
                    borderRadius: 10,
                    child: SizedBox(
                        width: 35,
                        height: 35,
                        child: Icon(
                          appBarButtonArrow
                              ? Icons.arrow_back_ios_new
                              : Icons.home_filled,
                          color: Colors.white,
                          size: 20,
                        )),
                  )
                : Container(),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(
                  "assets/images/logo.png",
                  height: 40,
                ),
                const SizedBox(
                  width: 15,
                ),
                const Text(
                  'Word Jumble',
                  style: TextStyle(
                    decoration: TextDecoration.none,
                    color: Colors.white,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.bold,
                    fontSize: 17,
                  ),
                ),
              ],
            ),
            const SizedBox(
              width: 30,
            ),
          ],
        ),
      ),
    );
  }
}
