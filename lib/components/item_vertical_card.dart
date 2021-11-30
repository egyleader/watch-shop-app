import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

import '../const.dart';

class ItemVerticalCard extends StatelessWidget {
  const ItemVerticalCard(
      {required this.textTheme,
      required this.image,
      required this.brand,
      required this.name,
      required this.color,
      required this.productCallback,
      required this.likeCallback});

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
          onTap: productCallback as void Function()?,
          child: AnimatedContainer(
            width: width / 2.5,
            duration: const Duration(seconds: 1),
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
                  margin: const EdgeInsets.all(10.0),
                  padding: const EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                      color: kAccentDarkColor.withAlpha(90),
                      borderRadius: BorderRadius.circular(12.0)),
                  child: InkWell(
                      onTap: likeCallback as void Function()?,
                      child: const Icon(Ionicons.heart, size: 18.0)),
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
                style: textTheme.headline3,
              ),
              Text(
                name,
                style: textTheme.headline4,
              )
            ],
          ),
        ),
      ],
    );
  }
}
