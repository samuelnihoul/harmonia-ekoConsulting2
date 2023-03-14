import 'package:flutter/material.dart';
import '../helpers/style.dart';

class BottomText extends StatelessWidget {
  final String mainText;
  final String secondaryText;

  const BottomText(
      {super.key, required this.mainText, required this.secondaryText});
  @override
  Widget build(BuildContext context) {
    return RichText(
        text: TextSpan(
            children: [
          TextSpan(text: "$mainText \n",style:h2),
          TextSpan(
              text: secondaryText,
  style:h3)
        ],
            style:h1 
               ));
  }
}
