import 'package:flutter/material.dart';

class RoundedIconButton extends StatelessWidget {
  RoundedIconButton({
    @required this.icon,
    this.color,
    this.margin = 10.0,
    this.padding = 10.0,
    this.borderRadius = 15.0,
    this.textStyle,
  });

  final Icon icon;
  final Color color;
  final double margin;
  final double padding;
  final double borderRadius;
  final TextStyle textStyle;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: color, borderRadius: BorderRadius.circular(borderRadius)),
      padding: EdgeInsets.all(margin),
      margin: EdgeInsets.all(padding),
      child: Center(child: icon),
    );
  }
}
