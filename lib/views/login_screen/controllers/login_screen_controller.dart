import 'package:assets_audio_player/assets_audio_player.dart';

import '../../../exports/index.dart';

class LoginScreenController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    startMusic();
  }

  void startMusic() {
    final assetsAudioPlayer = AssetsAudioPlayer();
    assetsAudioPlayer.open(
      Audio("assets/audios/main_music.mp3"),
      autoStart: true,
      loopMode: LoopMode.single,
    );
  }

  void onPressPlayAsGuest() {
    Get.toNamed(AppRoutes.HOME_SCREEN);
  }
}
