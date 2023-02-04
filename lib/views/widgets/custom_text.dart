import 'package:expensetracker/config/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String? text;
  final TextStyle? textStyle;
  final bool isItalic;
  final FontWeight? fontWeight;
  final Color? color;

  const CustomText(
      {required this.text,
      this.textStyle,
      this.isItalic = false,
      this.fontWeight,
      this.color,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      text ?? "",
      style: (textStyle ?? Theme.of(context).textTheme.bodyText1)!.copyWith(
          fontStyle: isItalic ? FontStyle.italic : FontStyle.normal,
          fontWeight: fontWeight,
          color: color),
    );
  }
}
