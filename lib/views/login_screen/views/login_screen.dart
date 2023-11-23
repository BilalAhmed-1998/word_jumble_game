import '../../../exports/index.dart';

class LoginScreen extends GetView<LoginScreenController> {
  static const String routeName = '/LoginScreen';
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SplashTemplate(
      isShowPurplePlanet: true,
      children: [
        //Logo  & Name//
        Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              "assets/images/logo.png",
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'World Jumble',
              style: TextStyle(
                decoration: TextDecoration.none,
                color: Colors.white,
                fontFamily: 'Inter',
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
            ),
          ],
        ),
        //Play as Guest //
        Positioned(
            bottom: 160,
            child: Column(
              children: [
                CustomRoundButton(
                  text: 'Play as Guest',
                  iconData: Icons.play_arrow,
                  onPressed: controller.onPressPlayAsGuest,
                ),
                // SizedBox(
                //   height: 20,
                // ),
                // CustomRoundButton(
                //   text: 'Login with Facebook',
                //   iconData: CupertinoIcons.f_cursive_circle_fill,
                //   backgroundColor: Color(0xff5EBAFF),
                //   foregroundColor: Color(0xff009CEC),
                //   shadowColor: Color(0xff1996D6),
                //   textColor: Color(0xff142AA0),
                //   iconColor: Color(0xff142AA0),
                // )
              ],
            )),
        Positioned(
            bottom: 50,
            child: SizedBox(
              width: 270,
              child: RichText(
                text: const TextSpan(
                    text: 'By continuing,You are agree to our',
                    style: TextStyle(color: Colors.white, fontSize: 13),
                    children: [
                      TextSpan(
                          text: ' Terms and Conditions',
                          style: TextStyle(
                              color: Color(0xff32B4FF),
                              fontSize: 13,
                              fontWeight: FontWeight.bold)),
                    ]),
                textAlign: TextAlign.center,
              ),
            )),
      ],
    );
  }
}
