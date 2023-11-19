import 'package:word_jumble_game/views/game_over_screen/bindings/game_over_screen_binding.dart';
import 'package:word_jumble_game/views/game_over_screen/views/game_over_screen.dart';

import '../exports/index.dart';

class AppPages {
  static final List<GetPage> pages = [
    GetPage(
      name: AppRoutes.SPLASH,
      page: () => const SplashScreen(),
    ),
    GetPage(
      name: AppRoutes.LOGIN_SCREEN,
      page: () => const LoginScreen(),
      binding: LoginScreenBinding(),
    ),
    GetPage(
      name: AppRoutes.HOME_SCREEN,
      page: () => const HomeScreen(),
      binding: HomeScreenBinding(),
    ),
    GetPage(
      name: AppRoutes.LEVELS_SCREEN,
      page: () => const LevelsScreen(),
      binding: LevelsScreenBinding(),
    ),
    GetPage(
      name: AppRoutes.GAME_PLAY_SCREEN,
      page: () => const GamePlayScreen(),
      binding: GamePlayScreenBinding(),
    ),
    GetPage(
      name: AppRoutes.GAME_OVER_SCREEN,
      page: () =>  GameOverScreen(),
      binding: GameOverScreenBinding(),
    ),
  ];
}
