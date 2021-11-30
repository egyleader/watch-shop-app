import 'package:flutter/material.dart';

class RoundedTextButton extends StatelessWidget {
  RoundedTextButton({
    required this.text,
    this.color,
    this.margin = 10.0,
    this.padding = 10.0,
    this.borderRadius = 15.0,
    this.textStyle,
    this.onpressed ,
  });

  final String text;
  final Color? color;
  final double margin;
  final double padding;
  final double borderRadius;
  final TextStyle? textStyle;
  final Function? onpressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onpressed != null ? onpressed as void Function()? : () { },
      child: Container(
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(borderRadius)),
        padding: EdgeInsets.all(margin),
        margin: EdgeInsets.all(padding),
        child: Center(
            child: Text(
          text,
          style:
              textStyle != null ? textStyle : Theme.of(context).textTheme.bodyText1,
        )),
      ),
    );
  }
}
