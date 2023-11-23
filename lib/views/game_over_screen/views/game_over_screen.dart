import 'package:word_jumble_game/views/game_over_screen/controllers/game_over_screen_controller.dart';
import '../../../exports/index.dart';

class GameOverScreen extends GetView<GameOverScreenController> {
  static const String routeName = '/gameOverScreen';

  final bool isSuccess;

  const GameOverScreen({super.key, this.isSuccess = false});

  @override
  Widget build(BuildContext context) {
    return isSuccess ? _buildGameWon(context) : _buildGameOver(context);
  }

  Widget _buildGameOver(BuildContext context) {
    return SplashTemplate(
        onlyBackGroundStars: false,
        isShowPurplePlanet: true,
        isShowLetters: false,
        showLeadingAppBarButton: false,
        isShowAppBar: true,
        children: [
          Positioned(
              top: 300,
              child: Stack(alignment: Alignment.bottomCenter, children: [
                Image.asset('assets/images/game_over_board.png'),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Level Failed',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    CustomRoundButton(
                      text: 'Try Again',
                      onPressed: () {
                        Get.offAllNamed(AppRoutes.LEVELS_SCREEN);
                      },
                      horizontalPadding: 25,
                      verticalPadding: 0,
                    ),
                    TextButton(
                        onPressed: () {
                          Get.offAllNamed(AppRoutes.HOME_SCREEN);
                        },
                        child: const Text(
                          'Back to Home',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          ),
                        ))
                  ],
                ),
              ])),
        ]);
  }

  Widget _buildGameWon(BuildContext context) {
    return SplashTemplate(
        onlyBackGroundStars: false,
        isShowPurplePlanet: false,
        isShowLetters: false,
        showLeadingAppBarButton: false,
        isShowAppBar: true,
        children: [
          Positioned(
              top: 200,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Stack(alignment: Alignment.bottomCenter, children: [
                    Image.asset('assets/images/game_won_board.png'),
                    Column(
                      children: [
                        const Text(
                          '1st',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                        const Text(
                          'Level Completed',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        CustomRoundButton(
                          text: 'Next Level',
                          onPressed: () {
                            Get.offAllNamed(AppRoutes.LEVELS_SCREEN);
                          },
                          horizontalPadding: 25,
                          verticalPadding: 0,
                        ),
                        TextButton(
                            onPressed: () {
                              Get.offAllNamed(AppRoutes.HOME_SCREEN);
                            },
                            child: const Text(
                              'Back to Home',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                              ),
                            ))
                      ],
                    ),
                  ]),
                  // SizedBox(height: 20,),
                  // Container(
                  //   decoration: BoxDecoration(
                  //     border: Border.all(
                  //       color: const Color(0xff8867E8),
                  //     ),
                  //     borderRadius: BorderRadius.circular(12),
                  //     color: const Color(0xff2F005C),
                  //   ),
                  //   width: MediaQuery.of(context).size.width,
                  //   height: 200,
                  //   child: Column(
                  //     crossAxisAlignment: CrossAxisAlignment.start,
                  //     children: [
                  //       const Padding(
                  //         padding: EdgeInsets.all(10.0),
                  //         child: Center(
                  //           child: Text(
                  //             'Word List',
                  //             style: TextStyle(
                  //               color: Colors.white,
                  //               fontWeight: FontWeight.bold,
                  //               fontSize: 22,
                  //             ),
                  //           ),
                  //         ),
                  //       ),
                  //       const Padding(
                  //         padding: EdgeInsets.all(8.0),
                  //         child: Text(
                  //           'Words You Found:',
                  //           style: TextStyle(
                  //             color: Colors.white,
                  //             fontSize: 15,
                  //           ),
                  //         ),
                  //       ),
                  //       SizedBox(
                  //         height: 100,
                  //         width: Get.width,
                  //         child: ListView(
                  //           shrinkWrap: true,
                  //           padding: EdgeInsets.zero,
                  //           children: const [
                  //             ListTile(
                  //               leading: Icon(Icons.arrow_right,
                  //                   color: Colors.white),
                  //               title: Text('Cat',
                  //                   style: TextStyle(
                  //                       color: Colors.white, fontSize: 18)),
                  //               trailing: CustomGradientContainer(
                  //                 width: 30,
                  //                 height: 30,
                  //                 child: SizedBox(
                  //                   height: 30,
                  //                   width: 30,
                  //                   child: Icon(
                  //                     Icons.add,
                  //                     size: 22,
                  //                     color: Colors.white,
                  //                   ),
                  //                 ),
                  //               ),
                  //             ),
                  //             ListTile(
                  //               leading: Icon(Icons.arrow_right,
                  //                   color: Colors.white),
                  //               title: Text('Dog',
                  //                   style: TextStyle(
                  //                       color: Colors.white, fontSize: 18)),
                  //               trailing: CustomGradientContainer(
                  //                 width: 30,
                  //                 height: 30,
                  //                 child: SizedBox(
                  //                   height: 30,
                  //                   width: 30,
                  //                   child: Icon(
                  //                     Icons.add,
                  //                     size: 22,
                  //                     color: Colors.white,
                  //                   ),
                  //                 ),
                  //               ),
                  //             ),
                  //             ListTile(
                  //               leading: Icon(Icons.arrow_right,
                  //                   color: Colors.white),
                  //               title: Text('Animal',
                  //                   style: TextStyle(
                  //                       color: Colors.white, fontSize: 18)),
                  //               trailing: CustomGradientContainer(
                  //                 width: 30,
                  //                 height: 30,
                  //                 child: SizedBox(
                  //                   height: 30,
                  //                   width: 30,
                  //                   child: Icon(
                  //                     Icons.add,
                  //                     size: 22,
                  //                     color: Colors.white,
                  //                   ),
                  //                 ),
                  //               ),
                  //             ),
                  //           ],
                  //         ),
                  //       )
                  //     ],
                  //   ),
                  // ),
                ],
              )),
        ]);
  }
}
