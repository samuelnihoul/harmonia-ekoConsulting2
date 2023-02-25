import 'package:flutter/material.dart';
import 'package:flutter_web_example/helpers/style.dart';

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
          TextSpan(text: "$mainText \n"),
          TextSpan(
              text: secondaryText,
  style:h3.copyWith(color:Colors.white))
        ],
            style:h1 
               ));
  }
}
