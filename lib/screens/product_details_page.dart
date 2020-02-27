import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:watch_shop_app/components/reoundedIconButton.dart';
import 'package:watch_shop_app/components/rounded_text_button.dart';
import 'package:watch_shop_app/screens/home_page.dart';
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
                                  color: kAccentDarkColor.withAlpha(70)),
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
                  children: <Widget>[
                    // Begin menu
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        IconButton(
                            icon: Icon(
                              Ionicons.md_arrow_back,
                              size: 35.0,
                              color: kAccentColor,
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => MyHomePage()),
                              );
                            }),
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
                        ),
                      ],
                    ),
                    SizedBox(height: height / 30),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              IconButton(
                                  icon: Icon(Ionicons.ios_arrow_up),
                                  iconSize: 30.0,
                                  color: Colors.white54,
                                  onPressed: () {}),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    'BRAND',
                                    style: textTheme.overline,
                                  ),
                                  Text(
                                    'HILFIGER',
                                    style: textTheme.body1,
                                  ),
                                  SizedBox(
                                    height: 25.0,
                                  ),
                                  Text(
                                    'STRAP',
                                    style: textTheme.overline,
                                  ),
                                  Text(
                                    'SILICONE',
                                    style: textTheme.body1,
                                  ),
                                  SizedBox(
                                    height: 25.0,
                                  ),
                                  Text(
                                    'COLOR',
                                    style: textTheme.overline,
                                  ),
                                  Text(
                                    'ROSE GOLD',
                                    style: textTheme.body1,
                                  ),
                                  SizedBox(
                                    height: 25.0,
                                  ),
                                  Text(
                                    'WARRANTY',
                                    style: textTheme.overline,
                                  ),
                                  Text(
                                    '2 YEARS',
                                    style: textTheme.body1,
                                  ),
                                ],
                              ),
                              IconButton(
                                  icon: Icon(Ionicons.ios_arrow_down),
                                  iconSize: 30.0,
                                  color: Colors.white54,
                                  onPressed: () {}),
                            ],
                          ),
                          Image(
                            image: AssetImage('assets/images/watch02.png'),
                            fit: BoxFit.contain,
                            width: width / 1.7,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'TRENDING PRODUCTS',
                                style: textTheme.subtitle,
                              ),
                              Text(
                                'DECKER WATCH',
                                style: textTheme.title,
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'Price',
                                style: textTheme.subtitle,
                              ),
                              Text(
                                '345\$',
                                style: textTheme.subhead,
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: height / 5,
                      child: SingleChildScrollView(
                        child: Text(
                          "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.",
                          style: TextStyle(
                              fontFamily: 'Bebas Neu',
                              fontSize: 15.0,
                              color: Colors.white54,
                              letterSpacing: 1.0,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                    ),
                    Row(
                      children: <Widget>[
                        Expanded(
                                                  child: RoundedTextButton(
                              text: 'ADD TO CART ',
                              textStyle: TextStyle(color: kBackgroundColor),
                              color: kAccentColor),
                        ),
                          RoundedIconButton(icon: Icon(Ionicons.ios_heart , color: Colors.red[300],), color: kAccentColor)
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ));
  }
}
