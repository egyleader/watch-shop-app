
import 'package:flutter/material.dart';

import '../const.dart';

class FeaturedItemCard extends StatelessWidget {


  const FeaturedItemCard({
    @required this.image,
    @required this.model,
    @required this.name ,
    @required this.exrept,
    @required this.color,
              this.ctaText,
    @required this.ctaCallback,
  });

  final String   image;
  final String   model;
  final String   name;
  final String   exrept;
  final Color    color;
  final String   ctaText;
  final Function ctaCallback;

  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;
    final double width = MediaQuery.of(context).size.width;


    return Container(
      padding: EdgeInsets.symmetric(vertical: 30.0, horizontal: 15.0),
      height: 210.0,
      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(image),
          fit: BoxFit.contain,
          alignment: Alignment.topRight,
        ),
        borderRadius: BorderRadius.circular(25.0),
        color: kAccentColor,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            model,
            style: textTheme.display2,
          ),
          Text(
            name,
            style: textTheme.display1,
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10.0),
            child: SizedBox(
              width: width / 2.8,
              child: Text(exrept,
                style: textTheme.caption,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
            width: width / 4,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(10)),
            child: Text('Buy Now  ⟶',
                style: textTheme.caption
                    .copyWith(textBaseline: TextBaseline.ideographic)),
          )
        ],
      ),
    );
  }
}
