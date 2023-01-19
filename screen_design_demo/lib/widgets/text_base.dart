import '../screen_design/screen_design.dart';

class TextBase extends StatelessWidget {
  final String message;

  const TextBase({
    Key? key,
    required this.message,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textStyle = context.screenData.isTablet
        ? Theme.of(context).textTheme.headline2
        : Theme.of(context).textTheme.headline4;
    return Text(
      message,
      style: textStyle,
    );
  }
}
