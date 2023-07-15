import '../exports/index.dart';

class SplashScreen extends StatelessWidget {
  static const String routeName = '/splashScreen';

  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
        duration: 10,
        splash: Icons.home,
        centered: true,
        nextScreen: const Home(),
        splashTransition: SplashTransition.fadeTransition,
        backgroundColor: Colors.blue);
  }

  Widget _buildSplashBody(BuildContext context){
    return Container(
      height: Get.height,
      width: Get.width,

    );
  }

}
