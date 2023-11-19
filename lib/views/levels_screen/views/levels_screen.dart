import '../../../exports/index.dart';

class LevelsScreen extends GetView<LevelsScreenController> {
  static const String routeName = '/LevelsScreen';
  const LevelsScreen({super.key});

  static const List<String> levelImages = [
    'assets/images/levels_screen/beginner level.png',
    'assets/images/levels_screen/medium level.png',
    'assets/images/levels_screen/pro level.png',
  ];

  static const List<String> levelNames = [
    'Beginner',
    'Moderate',
    'Advance',
  ];

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return SplashTemplate(
      onlyBackGroundStars: true,
      isShowAppBar: true,
      children: [
        Positioned(
          top: 120,
          child: Column(
            children: [
              for (var i = 0; i < levelImages.length; i++)
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      width: width,
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      margin: const EdgeInsets.symmetric(vertical: 5),
                      color: Colors.transparent,
                      child: Image.asset(
                        levelImages[i],
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                    Positioned(
                      left: 40,
                      top: 30,
                      child: Text(
                        levelNames[i],
                        textAlign: TextAlign.left,
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Column(
                      children: [
                        InkWell(
                          enableFeedback: true,
                          onTap: () => Get.toNamed(AppRoutes.GAME_PLAY_SCREEN),
                          child: CircleAvatar(
                              radius: 20,
                              backgroundColor: Colors.black.withOpacity(0.5),
                              child: const Icon(
                                Icons.play_arrow,
                                color: Colors.white,
                                size: 20,
                              )),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const Text(
                          '0/20 Completed',
                          style: TextStyle(color: Colors.white, fontSize: 12),
                        )
                      ],
                    ),
                  ],
                ),
            ],
          ),
        ),
      ],
    );
  }
}
