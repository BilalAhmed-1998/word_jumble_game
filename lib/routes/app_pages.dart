import '../exports/index.dart';

class AppPages {
  static final List<GetPage> pages = [
    GetPage(
      name: AppRoutes.SPLASH,
      page: () => const SplashScreen(),
      bindings: const [
        //LoginBinding(),
      ],
    ),
    GetPage(
      name: AppRoutes.HOME,
      page: () => const Home(),
    ),
  ];
}
