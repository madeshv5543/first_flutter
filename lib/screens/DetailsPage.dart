import 'package:flutter/material.dart';
import 'package:helloworld/utils/constants.dart';
import 'Package:helloworld/custom/BorderIcon.dart';
import 'package:helloworld/utils/widget_functions.dart';
import 'package:helloworld/utils/custom_functions.dart';

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
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
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
                    ),
                    addVerticalSpace(padding),
                    Padding(
                      padding: sidePadding,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Text("${formatcurrency(itemData['amount'])}", style: themeData.textTheme.headline1),
                              addVerticalSpace(5),
                              Text("${itemData['address']}", style: themeData.textTheme.bodyText2)
                            ],
                          ),
                          BorderIcon(
                            child: Text("20 hours ago", style: themeData.textTheme.headline5),
                            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                          )
                        ],
                      ),
                    ),
                    addVerticalSpace(padding),
                    Padding(
                      padding: sidePadding,
                      child: Text("House Information", style: themeData.textTheme.headline4),
                    ),
                    addVerticalSpace(padding),
                    SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            InformationTitle(content: "${itemData['area']}", name: "Squre Foot"),
                            InformationTitle(content: "${itemData['bathrooms']}", name: 'Bathrooms'),
                            InformationTitle(content: "${itemData['bedrooms']}", name: 'bedrooms'),
                            InformationTitle(content: "${itemData['garage']}", name: 'Garage'),
                            InformationTitle(content: "${itemData['garage']}", name: 'Garage')
                          ],
                        )),
                    addVerticalSpace(padding),
                    Text(
                      "${itemData['description']}",
                      textAlign: TextAlign.justify,
                      style: themeData.textTheme.bodyText2,
                    )
                  ],
                ),
              ),
            )));
  }
}

class InformationTitle extends StatelessWidget {
  final String content;
  final String name;

  const InformationTitle({Key key, this.content, this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    final Size size = MediaQuery.of(context).size;
    final double tileSize = size.width * 0.20;
    return Container(
      margin: EdgeInsets.only(left: 25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          BorderIcon(width: tileSize, height: tileSize, child: Text(content, style: themeData.textTheme.headline3)),
          addVerticalSpace(15),
          Text(name, style: themeData.textTheme.headline6)
        ],
      ),
    );
  }
}
