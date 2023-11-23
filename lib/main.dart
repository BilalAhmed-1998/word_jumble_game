import 'exports/index.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  LoginScreenBinding().dependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'World Jumble Game',
      debugShowCheckedModeBanner: false,
      theme: myTheme,
      initialRoute: AppRoutes.SPLASH,
      getPages: AppPages.pages,
      defaultTransition: Transition.cupertino,
    );
  }
}

final ThemeData myTheme = ThemeData(
  textTheme: const TextTheme(
    bodyMedium: TextStyle(
      decoration: TextDecoration.none,
      fontFamily: 'Inter',
    ),
  ),
);
