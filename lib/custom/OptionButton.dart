import 'package:flutter/material.dart';
import 'package:helloworld/utils/constants.dart';
import 'package:helloworld/utils/widget_functions.dart';

class OptionButton extends StatelessWidget {
  final String text;
  final IconData icon;
  final double width;

  const OptionButton({Key key, this.text, this.icon, this.width}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      child: FlatButton(
          color: COLOR_DARK_BLUE,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          onPressed: () {},
          child: Row(
            children: [
              Icon(icon, color: COLOR_WHITE),
              addHorizontalSpace(10),
              Text(text, style: TextStyle(color: COLOR_WHITE))
            ],
          )),
    );
  }
}
