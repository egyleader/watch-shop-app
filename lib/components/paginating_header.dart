
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:watch_shop_app/const.dart';

class PaginatingHeader extends StatelessWidget {
  final String title;
  final String subtitle;
  final Function previousCallback;
  final Function nextCallback;

  PaginatingHeader(
      {@required this.title,
      @required this.subtitle,
      @required this.previousCallback,
      @required this.nextCallback});

  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          subtitle,
          style: textTheme.subtitle,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(title, style: textTheme.title),
            Row(
              children: <Widget>[
                IconButton(
                    padding: EdgeInsets.all(0.0),
                    icon: Icon(
                      Ionicons.ios_arrow_back,
                      size: 30.0,
                      color: kAccentColor,
                    ),
                    onPressed: previousCallback),
                IconButton(
                    padding: EdgeInsets.all(0.0),
                    icon: Icon(
                      Ionicons.ios_arrow_forward,
                      size: 30.0,
                      color: kAccentColor,
                    ),
                    onPressed: nextCallback),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
