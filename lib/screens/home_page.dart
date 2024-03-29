import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:watch_shop_app/components/featured_item_card.dart';
import 'package:watch_shop_app/components/item_vertical_card.dart';
import 'package:watch_shop_app/components/paginating_header.dart';
import 'package:watch_shop_app/screens/product_details_page.dart';

import '../const.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

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
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
          decoration: const BoxDecoration(gradient: kBackgroundGradient),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  IconButton(
                      icon: const Icon(
                        Ionicons.menu,
                        size: 35.0,
                        color: kAccentColor,
                      ),
                      onPressed: () {}),
                  Row(
                    children: <Widget>[
                      IconButton(
                        icon: const Icon(Ionicons.search,
                            size: 35.0, color: kTextColor),
                        onPressed: () {},
                      ),
                      IconButton(
                        icon: const Icon(Ionicons.cart,
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
                    productCallback: () {
                     
                    },
                  ),
                  ItemVerticalCard(
                    textTheme: textTheme,
                    image: 'assets/images/watch02.png',
                    brand: 'TOMMY HILFIGER',
                    name: 'DECKER WATCH',
                    color: kAccentColor,
                    likeCallback: () {},
                    productCallback: () {
                       Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const  ProductDetailsPage()));
                    },
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
