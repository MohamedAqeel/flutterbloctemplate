import 'package:expensetracker/config/strings.dart';
import 'package:expensetracker/views/widgets/custom_button.dart';
import 'package:expensetracker/views/widgets/custom_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NoInternet extends StatelessWidget {
  final void Function()? callBack;
  const NoInternet({this.callBack, super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomText(
            text: Strings.noInternet,
            textStyle: Theme.of(context).textTheme.headline6,
            fontWeight: FontWeight.normal,
          ),
          const SizedBox(
            height: 10,
          ),
          callBack == null
              ? Container()
              : CustomButton(label: Strings.retry, onTap: callBack)
        ],
      ),
    );
  }
}
