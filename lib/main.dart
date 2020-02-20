import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:watch_shop_app/const.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: ' Watch Shop app ',
      debugShowCheckedModeBanner: false,
      theme: kMainTheme,
      home: MyHomePage(),
    );
  }
}

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
              // TODO: move this into it's own wigdet
              Text(
                'FEATURED',
                style: textTheme.subtitle,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text('PRODUCTS', style: textTheme.title),
                  Row(
                    children: <Widget>[
                      IconButton(
                          icon: Icon(
                            Ionicons.ios_arrow_back,
                            size: 35.0,
                            color: kAccentColor,
                          ),
                          onPressed: () {}),
                      IconButton(
                          icon: Icon(
                            Ionicons.ios_arrow_forward,
                            size: 35.0,
                            color: kAccentColor,
                          ),
                          onPressed: () {}),
                    ],
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.all(10.0),
                padding: EdgeInsets.symmetric(vertical: 30.0, horizontal: 15.0),
                height: 210.0,
                width: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/watch01.png'),
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
                      'WSD-006',
                      style: textTheme.display2,
                    ),
                    Text(
                      'WISHDOIT',
                      style: textTheme.display1,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 10.0),
                      child: SizedBox(
                        width: width / 2.8,
                        child: Text(
                          'Fashion Men Quartz Watch Luxury Leather Strap Waterproof',
                          style: textTheme.caption,
                        ),
                      ),
                    ),
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
                      width: width / 4,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: Text('Buy Now  ⟶',
                          style: textTheme.caption.copyWith(
                              textBaseline: TextBaseline.ideographic)),
                    )
                  ],
                ),
              ),
              SizedBox(height: 15.0),
              Text(
                'TRENDING',
                style: textTheme.subtitle,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text('PRODUCTS', style: textTheme.title),
                  Row(
                    children: <Widget>[
                      IconButton(
                          icon: Icon(
                            Ionicons.ios_arrow_back,
                            size: 35.0,
                            color: kAccentColor,
                          ),
                          onPressed: () {}),
                      IconButton(
                          icon: Icon(
                            Ionicons.ios_arrow_forward,
                            size: 35.0,
                            color: kAccentColor,
                          ),
                          onPressed: () {}),
                    ],
                  ),
                ],
              ),
              Row(
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
        AnimatedContainer(
          margin: EdgeInsets.symmetric(horizontal: 7.0),
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
                    onTap: () {}, child: Icon(Ionicons.ios_heart, size: 18.0)),
              )
            ],
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
