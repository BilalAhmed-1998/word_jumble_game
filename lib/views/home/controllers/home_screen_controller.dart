import '../../../exports/index.dart';

class HomeScreenController extends GetxController {
  void onPressPlayNow() => Get.toNamed(AppRoutes.LEVELS_SCREEN);

  void showCustomDialog() {
    Get.dialog(
        Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          backgroundColor: Colors.transparent,
          child: Stack(alignment: Alignment.bottomCenter, children: [
            Image.asset('assets/images/game_setting_board.png'),
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 160,
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const [
                      CustomGradientContainer(
                        height: 28,
                        width: 28,
                        borderRadius: 6,
                        child: SizedBox(
                            width: 28,
                            height: 28,
                            child: Icon(
                              CupertinoIcons.music_note_2,
                              color: Colors.white,
                              size: 14,
                            )),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        'Game Music',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 18,
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 10,),
                SizedBox(
                  width: 160,
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const [
                      CustomGradientContainer(
                        height: 28,
                        width: 28,
                        borderRadius: 6,
                        child: SizedBox(
                            width: 28,
                            height: 28,
                            child: Icon(
                              Icons.volume_up,
                              color: Colors.white,
                              size: 14,
                            )),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        'Game Sound',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 18,
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 10,),
                SizedBox(
                  width: 160,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const [
                      CustomGradientContainer(
                        height: 28,
                        width: 28,
                        borderRadius: 6,
                        child: SizedBox(
                            width: 28,
                            height: 28,
                            child: Icon(
                              Icons.language_rounded,
                              color: Colors.white,
                              size: 14,
                            )),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        'Language',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 18,
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 15,),
                CustomRoundButton(
                  text: 'Back',
                  onPressed: Get.back,
                )
              ],
            ),
          ]),
        ),
        barrierDismissible: false);
  }

  void showLeaderScoreBoard(){
    Get.dialog(
        Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          backgroundColor: Colors.transparent,
          child: Stack(alignment: Alignment.bottomCenter, children: [
            Image.asset('assets/images/leader_board.png'),
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

                CustomRoundButton(
                  text: 'Back',
                  onPressed: Get.back,
                )
              ],
            ),
          ]),
        ),
        barrierDismissible: false);
  }

  void showDictionaryBoard(){
    Get.dialog(
        Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          backgroundColor: Colors.transparent,
          child: Stack(alignment: Alignment.bottomCenter, children: [
            Image.asset('assets/images/dict_board.png'),
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

                CustomRoundButton(
                  text: 'Back',
                  onPressed: Get.back,
                )
              ],
            ),
          ]),
        ),
        barrierDismissible: false);
  }
}
