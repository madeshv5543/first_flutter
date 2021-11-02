import 'package:flutter/material.dart';
import 'package:helloworld/custom/BorderIcon.dart';
import 'package:helloworld/utils/constants.dart';
import 'package:helloworld/utils/widget_functions.dart';

import '../sample_data.dart';

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final ThemeData themeData = Theme.of(context);
    final double padding = 25.0;
    final sidePadding = EdgeInsets.symmetric(horizontal: padding);
    return Scaffold(
      body: Container(
          width: size.width,
          height: size.height,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              addVerticalSpace(padding),
              Padding(
                padding: sidePadding,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    BorderIcon(width: 50, height: 50, child: Icon(Icons.menu, color: COLOR_BLACK)),
                    BorderIcon(width: 50, height: 50, child: Icon(Icons.settings, color: COLOR_BLACK))
                  ],
                ),
              ),
              addVerticalSpace(padding),
              Padding(
                padding: sidePadding,
                child: Text('City', style: themeData.textTheme.bodyText1),
              ),
              addVerticalSpace(padding),
              Padding(
                padding: sidePadding,
                child: Text('San Francisco', style: themeData.textTheme.headline1),
              ),
              Padding(padding: sidePadding, child: Divider(height: padding, color: COLOR_GREY)),
              addVerticalSpace(10),
              SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      "<\$220,000",
                      "For Sale",
                      "3-4 Beds",
                      ">1000 sqft"
                    ].map((filter) => ChoiceOption(text: filter)).toList(),
                  )),
              addVerticalSpace(10),
              Expanded(
                child: Padding(
                  padding: sidePadding,
                  child: ListView.builder(
                    itemCount: RE_DATA.length,
                    itemBuilder: (context, index) {
                      return RealEstateItem(itemData: RE_DATA[index]);
                    },
                  ),
                ),
              )
            ],
          )),
    );
  }
}

class ChoiceOption extends StatelessWidget {
  final String text;

  const ChoiceOption({Key key, this.text}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    return Container(
        decoration: BoxDecoration(
          color: COLOR_GREY,
          borderRadius: BorderRadius.circular(20.0),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 13),
        margin: EdgeInsets.only(left: 25),
        child: Text(text, style: themeData.textTheme.headline5));
  }
}

class RealEstateItem extends StatelessWidget {
  final dynamic itemData;

  const RealEstateItem({Key key, @required this.itemData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData themeDate = Theme.of(context);
    return Container(
        child: Column(
      children: [
        Stack(
          children: [
            Image.asset(itemData['image']),
            Positioned(
                top: 15,
                right: 15,
                child: BorderIcon(
                    width: 50,
                    height: 50,
                    child: Icon(
                      Icons.favorite_border,
                      color: COLOR_BLACK,
                    )))
          ],
        )
      ],
    ));
  }
}
