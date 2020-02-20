
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:watch_shop_app/components/featured_item_card.dart';
import 'package:watch_shop_app/components/item_vertical_card.dart';
import 'package:watch_shop_app/components/paginating_header.dart';

import '../const.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Some repetitive values for shorting the code

    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    final TextTheme textTheme = Theme.of(context).textTheme;

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SafeArea(
        child: Container(
          height: height,
          width: width,
          padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
          decoration: BoxDecoration(gradient: kBackgroundGradient),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  IconButton(
                      icon: Icon(
                        Ionicons.ios_menu,
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
              SizedBox(height: height / 25),
              PaginatingHeader(
                subtitle: 'FEATURED',
                title: 'PRODUCTS',
                nextCallback: () {},
                previousCallback: () {},
              ),

              FeaturedItemCard(
                image: 'assets/images/watch01.png',
                model: 'WSD-006',
                color: kAccentColor,
                ctaCallback: () {},
                exrept:
                    'Fashion Men Quartz Watch Luxury Leather Strap Waterproof',
                name: 'WISHDOIT',
                ctaText: 'Buy Now',
              ),
              SizedBox(height: 15.0),

              PaginatingHeader(
                subtitle: 'POPULAR',
                title: 'PRODUCTS',
                nextCallback: () {},
                previousCallback: () {},
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  ItemVerticalCard(
                    textTheme: textTheme,
                    image: 'assets/images/watch03.png',
                    brand: 'Fossil',
                    name: 'GRANT WATCH ',
                    color: kAccentColor,
                    likeCallback: () {},
                    productCallback: () {},
                  ),
                  ItemVerticalCard(
                    textTheme: textTheme,
                    image: 'assets/images/watch02.png',
                    brand: 'TOMMY HILFIGER',
                    name: 'DECKER WATCH',
                    color: kAccentColor,
                    likeCallback: () {},
                    productCallback: () {},
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
