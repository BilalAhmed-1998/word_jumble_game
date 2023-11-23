import 'package:word_jumble_game/views/game_over_screen/controllers/game_over_screen_controller.dart';

import '../../../exports/index.dart';

class GameOverScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => GameOverScreenController());
  }
}

