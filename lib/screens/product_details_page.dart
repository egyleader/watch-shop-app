import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import '../const.dart';

class ProductDetailsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    final TextTheme textTheme = Theme.of(context).textTheme;

    return Scaffold(
        backgroundColor: kBackgroundColor,
        body: Stack(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Container(
                    width: width / 2,
                    height: height / 1.7,
                    decoration: BoxDecoration(
                        color: kAccentColor,
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(100))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(bottom: 20.0),
                          child: RotatedBox(
                            quarterTurns: -1,
                            child: Text(
                              'TOMMY HILFIGER',
                              style: TextStyle(
                                  fontSize: height / 14,
                                  color: kAccentDarkColor.withAlpha(80)),
                            ),
                          ),
                        ),
                      ],
                    )),
              ],
            ),
// END OF Background Strap
            SafeArea(
              
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        IconButton(
                            icon: Icon(
                              Ionicons.md_arrow_back,
                              size: 35.0,
                              color: kAccentColor,
                            ),
                            onPressed: () {}),
                        Row(
                          children: <Widget>[
                            IconButton(
                              icon: Icon(Ionicons.ios_search,
                                  size: 35.0, color: kTextColor),
                              onPressed: () {},
                            ),
                            IconButton(
                              icon: Icon(Ionicons.ios_cart,
                                  size: 35.0, color: kTextColor),
                              onPressed: () {},
                            ),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ));
  }
}
