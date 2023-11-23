import '../exports/index.dart';

class CustomRoundButton extends StatelessWidget {
  final String text;
  final IconData? iconData;
  final double? horizontalPadding;
  final double? verticalPadding;
  final Color backgroundColor;
  final Color foregroundColor;
  final Color shadowColor;
  final Color iconColor;
  final Color textColor;
  final double textSize;
  final VoidCallback? onPressed;

  const CustomRoundButton(
      {Key? key,
      required this.text,
      this.onPressed,
      this.iconData,
      this.horizontalPadding = 12,
        this.textSize = 13,
      this.verticalPadding = 8,
      this.backgroundColor = const Color(0xff5E26B3),
      this.foregroundColor = const Color(0xff6C025B),
      this.shadowColor = const Color(0xffAA0790),
      this.textColor = Colors.white,
      this.iconColor = Colors.white})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
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
      ),
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: Colors.transparent,
              foregroundColor: Colors.transparent,
              shadowColor: Colors.transparent,
              elevation: 5,
              enableFeedback: true,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              )),
          onPressed: onPressed,
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: horizontalPadding ?? 12,
                vertical: verticalPadding ?? 5),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                if (iconData != null) ...[
                  Icon(
                    iconData,
                    color: iconColor,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                ],
                Center(
                  child: Text(
                    text,
                    style: TextStyle(
                      color: textColor,
                      fontSize: textSize,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Inter',
                      overflow: TextOverflow.ellipsis,
                    ),
                    textAlign: TextAlign.center,
                    maxLines: 2,
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
