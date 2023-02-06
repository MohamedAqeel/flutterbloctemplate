import 'package:flutterbloctemplate/views/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String label;
  final void Function()? onTap;

  const CustomButton({required this.label, required this.onTap, super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onTap,
      child: CustomText(
        text: label,
        textStyle: Theme.of(context).textTheme.bodyText2,
      ),
    );
  }
}
