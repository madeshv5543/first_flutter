import 'package:flutter/material.dart';
import 'package:helloworld/utils/constants.dart';

class DetailsPage extends StatelessWidget {
  final dynamic itemData;

  const DetailsPage({Key key, @required this.itemData}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return SafeArea(
        child: Scaffold(
            backgroundColor: COLOR_WHITE,
            body: Container(
              width: size.width,
              height: size.height,
              child: Column(
                children: [
                  Image.asset(itemData['image'])
                ],
              ),
            )));
  }
}
