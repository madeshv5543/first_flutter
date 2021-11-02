import 'package:flutter/material.dart';
import 'package:helloworld/utils/constants.dart';
import 'Package:helloworld/custom/BorderIcon.dart';

class DetailsPage extends StatelessWidget {
  final dynamic itemData;

  const DetailsPage({Key key, @required this.itemData}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final ThemeData themeData = Theme.of(context);
    final double padding = 25;
    final sidePadding = EdgeInsets.symmetric(horizontal: padding);
    return SafeArea(
        child: Scaffold(
            backgroundColor: COLOR_WHITE,
            body: Container(
              width: size.width,
              height: size.height,
              child: Column(
                children: [
                  Stack(
                    children: [
                      Image.asset(itemData['image']),
                      Positioned(
                        top: padding,
                        width: size.width,
                        child: Padding(
                          padding: sidePadding,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              InkWell(
                                  onTap: () {
                                    Navigator.pop(context);
                                  },
                                  child: BorderIcon(
                                    width: 50,
                                    height: 50,
                                    child: Icon(Icons.keyboard_backspace, color: COLOR_BLACK),
                                  )),
                              BorderIcon(width: 50, height: 50, child: Icon(Icons.favorite_border, color: COLOR_BLACK))
                            ],
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            )));
  }
}
