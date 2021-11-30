
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:watch_shop_app/const.dart';

class PaginatingHeader extends StatelessWidget {
  final String title;
  final String subtitle;
  final Function previousCallback;
  final Function nextCallback;

  PaginatingHeader(
      {required this.title,
      required this.subtitle,
      required this.previousCallback,
      required this.nextCallback});

  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          subtitle,
          style: textTheme.subtitle2,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(title, style: textTheme.subtitle1),
            Row(
              children: <Widget>[
                IconButton(
                    padding: const EdgeInsets.all(0.0),
                    icon: const Icon(
                      Ionicons.arrow_back,
                      size: 30.0,
                      color: kAccentColor,
                    ),
                    onPressed: previousCallback as void Function()?),
                IconButton(
                    padding: const EdgeInsets.all(0.0),
                    icon: const Icon(
                      Ionicons.arrow_forward,
                      size: 30.0,
                      color: kAccentColor,
                    ),
                    onPressed: nextCallback as void Function()?),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
