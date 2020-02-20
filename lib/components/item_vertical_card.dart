import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

import '../const.dart';

class ItemVerticalCard extends StatelessWidget {
  const ItemVerticalCard(
      {@required this.textTheme,
      @required this.image,
      @required this.brand,
      @required this.name,
      @required this.color,
      @required this.productCallback,
      @required this.likeCallback});

  final String name;
  final String brand;
  final String image;
  final TextTheme textTheme;
  final Color color;
  final Function productCallback;
  final Function likeCallback;
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        InkWell(
          onTap: productCallback,
          child: AnimatedContainer(
            width: width / 2.5,
            duration: Duration(seconds: 1),
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(15.0),
              image: DecorationImage(
                  image: AssetImage(image),
                  fit: BoxFit.fitHeight,
                  alignment: Alignment.center),
            ),
            height: height / 4,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.all(10.0),
                  padding: EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                      color: kAccentDarkColor.withAlpha(90),
                      borderRadius: BorderRadius.circular(12.0)),
                  child: InkWell(
                      onTap: likeCallback,
                      child: Icon(Ionicons.ios_heart, size: 18.0)),
                )
              ],
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 10.0, left: 10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                brand,
                style: textTheme.display3,
              ),
              Text(
                name,
                style: textTheme.display4,
              )
            ],
          ),
        ),
      ],
    );
  }
}
