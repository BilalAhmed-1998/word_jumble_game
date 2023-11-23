import 'dart:ui';
import '../../../exports/index.dart';

class HomeScreen extends GetView<HomeScreenController> {
  static const String routeName = '/HomeScreen';
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return SplashTemplate(
      children: [
        //Logo  & Name//
        Column(
          mainAxisSize: MainAxisSize.min,
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
                decoration: TextDecoration.none,
                color: Colors.white,
                fontFamily: 'Inter',
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
            ),
          ],
        ),
        //Play as Guest //
        Positioned(
            bottom: 160,
            child: Column(
              children: [
                CustomRoundButton(
                  text: 'Play Now',
                  iconData: Icons.play_arrow,
                  onPressed: controller.onPressPlayNow,
                ),
              ],
            )),
        //Blur effect //
        Positioned(
          top: 50,
          width: width,
          height: 50,
          child: ClipRect(
            child: BackdropFilter(
              filter: ImageFilter.blur(
                  sigmaX: 5, sigmaY: 5), // Adjust blur strength
              child: Container(
                color: Colors.transparent, // The color here doesn't matter
              ),
            ),
          ),
        ),
        //Row for settings//
        Positioned(
            top: 50,
            child: Container(
              width: width,
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //profile picture //
                  CustomGradientContainer(
                    height: 50,
                    width: 50,
                    child: SizedBox(
                      height: 50,
                      width: 50,
                      child: Image.asset(
                        'assets/images/home_screen/Profile.png',
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  //Coins//
                  Stack(children: [
                    const SizedBox(
                      height: 50,
                      width: 120,
                    ),
                    Positioned(
                      right: 0,
                      child: Container(
                        padding: const EdgeInsets.fromLTRB(30, 8, 10, 8),
                        decoration: BoxDecoration(
                            gradient: const LinearGradient(
                              end: Alignment.topCenter,
                              begin: Alignment.bottomCenter,
                              colors: [
                                Color(0xff8800DB),
                                Color(0xff8201D8),
                                Color(0xff7205CE),
                                Color(0xff570BBE),
                                Color(0xff3113A8),
                                Color(0xff001E8C),
                              ],
                            ),
                            borderRadius: BorderRadius.circular(14)),
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 7, vertical: 5),
                          alignment: Alignment.bottomRight,
                          decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(5)),
                          child: const Text(
                            '100',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                decoration: TextDecoration.none,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 10,
                      top: 0,
                      child: SizedBox(
                          height: 50,
                          child: Image.asset(
                            'assets/images/home_screen/coins.png',
                            fit: BoxFit.fill,
                          )),
                    )
                  ]),

                  //setting and options//
                  Column(
                    children: [
                      CustomGradientContainer(
                        height: 45,
                        width: 45,
                        borderRadius: 10,
                        child: InkWell(
                          onTap: () {
                            controller.showDictionaryBoard();
                          },
                          child: const SizedBox(
                              width: 45,
                              height: 45,
                              child: Icon(
                                Icons.menu_book_sharp,
                                color: Colors.white,
                                size: 25,
                              )),
                        ),
                      ),
                      CustomGradientContainer(
                        height: 45,
                        width: 45,
                        borderRadius: 10,
                        child: InkWell(
                          onTap: () {
                            controller.showCustomDialog();
                          },
                          child: const SizedBox(
                              width: 45,
                              height: 45,
                              child: Icon(
                                Icons.settings,
                                color: Colors.white,
                                size: 25,
                              )),
                        ),
                      ),
                      CustomGradientContainer(
                        height: 45,
                        width: 45,
                        borderRadius: 10,
                        child: InkWell(
                          onTap: () {
                            controller.showLeaderScoreBoard();
                          },
                          child: const SizedBox(
                              width: 45,
                              height: 45,
                              child: Icon(
                                Icons.leaderboard_outlined,
                                color: Colors.white,
                                size: 25,
                              )),
                        ),
                      ),
                      const CustomGradientContainer(
                        height: 45,
                        width: 45,
                        borderRadius: 10,
                        child: SizedBox(
                            width: 45,
                            height: 45,
                            child: Icon(
                              Icons.local_grocery_store,
                              color: Colors.white,
                              size: 25,
                            )),
                      ),
                    ],
                  ),
                ],
              ),
            )),
      ],
    );
  }
}
