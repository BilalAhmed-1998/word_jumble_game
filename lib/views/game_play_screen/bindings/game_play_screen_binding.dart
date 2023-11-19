import '../../../exports/index.dart';

class GamePlayScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => GamePlayScreenController());
  }
}
