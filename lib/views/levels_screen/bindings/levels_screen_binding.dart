
import '../../../exports/index.dart';


class LevelsScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LevelsScreenController());
  }
}
