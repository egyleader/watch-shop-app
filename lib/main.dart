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
          padding: EdgeInsets.all(20.0),
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
                      ),
                      IconButton(
                        icon: Icon(Ionicons.ios_cart,
                            size: 35.0, color: kTextColor),
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(height: height / 10),
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
                height: 200.0,
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
                      padding: EdgeInsets.symmetric(vertical:10.0),
                      child: SizedBox(
                        width: width/2.8,
                                              child: Text(
                            'Fashion Men Quartz Watch Luxury Leather Strap Waterproof' , style: textTheme.caption,),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
