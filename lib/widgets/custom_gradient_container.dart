import '../exports/index.dart';

class CustomGradientContainer extends StatelessWidget {
  final double width;
  final double height;
  final Widget? child;
  final double borderRadius;
  final VoidCallback? onPressed;
  const CustomGradientContainer(
      {Key? key,
      this.width = 50,
      this.height = 50,
      this.child,
      this.borderRadius = 30,
      this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        width: width,
        height: height,
        margin: const EdgeInsets.only(bottom: 8),
        decoration: BoxDecoration(
            border: Border.all(color: Colors.white.withOpacity(0.6)),
            gradient: const LinearGradient(
              end: Alignment.topCenter,
              begin: Alignment.bottomCenter,
              colors: [
                Color(0xff8800DB),
                Color(0xff8201D8),
                Color(0xff7205CE),
                Color(0xff570BBE),
                Color(0xff3113A8),
                Color(0xff001E8C),
              ],
            ),
            borderRadius: BorderRadius.circular(borderRadius)),
        child: child ?? Container(),
      ),
    );
  }
}
