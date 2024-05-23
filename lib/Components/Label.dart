import 'package:flutter/material.dart';

class Label extends StatelessWidget {
  final double fontSize;
  final Color color;
  final String text;
  final double? width;
  final FontWeight? fontWeight;
  final EdgeInsets? padding;
  const Label(
      {Key? key,
      required this.text,
      this.padding,
      this.fontWeight,
      this.width,
      required this.fontSize,
      required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      padding: padding,
      child: Text(text,
          style: TextStyle(
            fontSize: fontSize,
            color: color,
            fontWeight: fontWeight,
          )),
    );
  }
}
