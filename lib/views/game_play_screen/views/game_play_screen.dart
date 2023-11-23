import 'package:word_jumble_game/views/game_over_screen/views/game_over_screen.dart';

import '../../../exports/index.dart';

class GamePlayScreen extends GetView<GamePlayScreenController> {
  static const String routeName = '/gamePlayScreen';

  const GamePlayScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SplashTemplate(
      onlyBackGroundStars: true,
      isShowAppBar: true,
      appBarButtonArrow: true,
      children: [
        Positioned(
          top: 120, // Adjust the top position based on your layout
          child: Column(
            children: [
              const Text(
                'Level 01',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold),
              ),
              CrosswordGridWidget(),
              SizedBox(
                width: Get.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Flexible(
                      child: Obx(
                        () => CustomRoundButton(
                          text:
                              '0${controller.extraTimeCount.value} Extra Time',
                          textSize: 12,
                          horizontalPadding: 0,
                          onPressed: controller.onPressExtraTime,
                        ),
                      ),
                    ),
                    Flexible(
                      child: Obx(
                        () => InkWell(
                          onTap: () {
                            Get.to(() => const GameOverScreen(
                                  isSuccess: true,
                                ));
                            controller.stopTimer();
                          },
                          child: CircleAvatar(
                              backgroundColor: controller.counter.value > 10
                                  ? const Color(0xffEF9457)
                                  : const Color(0xffD5361A),
                              radius: 35,
                              child: Center(
                                child: Text(
                                  '${controller.counter}',
                                  style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold),
                                ),
                              )),
                        ),
                      ),
                    ),
                    Flexible(
                      child: Obx(() => CustomRoundButton(
                            text: '0${controller.hintsLeft}  Hints Left',
                            textSize: 12,
                            horizontalPadding: 0,
                            onPressed: () {
                              if (controller.hintsLeft.value > 0) {
                                controller.showCustomSnackBar();
                              }
                            },
                          )),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: Get.width,
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    EmptySlot(
                      value: 'Cat',
                      showLetters: true,
                    ),
                    EmptySlot(
                      value: 'Dog',
                      showLetters: false,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              // SizedBox(
              //   width: Get.width,
              //   child: Row(
              //     mainAxisSize: MainAxisSize.max,
              //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              //     children: const [
              //       EmptySlot(
              //         value: 'plant',
              //         showLetters: false,
              //       ),
              //     ],
              //   ),
              // ),
            ],
          ), // Use CrosswordGridWidget here
        ),
      ],
    );
  }
}

class EmptySlot extends StatelessWidget {
  final String value;
  final bool showLetters;
  const EmptySlot({Key? key, required this.value, this.showLetters = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: const Color(0xff7D31D5).withOpacity(0.5),
          borderRadius: BorderRadius.circular(6)),
      child: Row(
        children: [
          for (var i = 0; i < value.length; i++)
            Container(
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: const Color(0xff1A0B36),
                borderRadius: BorderRadius.circular(5),
              ),
              width: 25,
              height: 25,
              child: Center(
                  child: Text(
                showLetters ? value[i].toUpperCase() : '',
                style: const TextStyle(color: Colors.yellow),
              )),
            )
        ],
      ),
    );
  }
}

class CrosswordGridWidget extends StatelessWidget {
  final crosswordGenerator = CrosswordGenerator([
    'cat',
    'dog',
    'bird',
    'fish',
    'rose',
    'blue',
    'tree',
    'moon',
    'sun',
    'car',
    'book',
    'song',
    'rain',
    'frog',
    'lamp',
    'star',
    'Anis',
    'pink',
    'gold',
    'jump',
    'play',
  ], 4, 3);

  CrosswordGridWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final crossword = crosswordGenerator.generatePuzzle();
    return Container(
      height: Get.height*0.55,
      width: Get.width,
      margin: const EdgeInsets.symmetric(horizontal: 10),
      child: GridView.builder(
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: crossword.gridSize,
        ),
        itemCount: crossword.gridSize * crossword.gridSize,
        itemBuilder: (context, index) {
          final row = index ~/ crossword.gridSize;
          final col = (index % crossword.gridSize).toInt();
          final character = crossword.grid[row][col];

          return InkWell(
            onTap: () {},
            child: Container(
              height: 50,
              width: 50,
              margin: const EdgeInsets.all(18),
              decoration: BoxDecoration(
                color: const Color(0xff8B55C9),
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0xff8B55C9).withOpacity(0.5),
                    spreadRadius: 1,
                    blurRadius: 3,
                    offset: const Offset(2, 2),
                  ),
                ],
              ),
              child: Center(
                child: Text(
                  character.toUpperCase(),
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 35,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
