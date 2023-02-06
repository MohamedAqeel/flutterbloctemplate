import 'package:flutterbloctemplate/config/globals.dart';
import 'package:flutterbloctemplate/views/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class AppLogo extends StatelessWidget {
  const AppLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomText(
      text: Globals.APPNAME,
      textStyle: Theme.of(context).textTheme.headline5!,
      isItalic: true,
    );
  }
}
