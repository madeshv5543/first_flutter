import 'package:flutter/material.dart';
import 'package:helloworld/utils/constants.dart';

class BorderIcon extends StatelessWidget {
  final Widget child;
  final EdgeInsets padding;
  final double height, width;

  const BorderIcon({Key key, this.padding, this.height, this.width, @required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(color: COLOR_WHITE, borderRadius: BorderRadius.all(Radius.circular(15.0)), border: Border.all(color: COLOR_DARK_BLUE.withAlpha(40), width: 2)),
      padding: padding ?? const EdgeInsets.all(8.0),
      child: Center(child: child),
    );
  }
}
