import 'package:flutter/material.dart';

class MobileServicesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 450,
              constraints: BoxConstraints(maxWidth: 450),
              margin: EdgeInsets.symmetric(horizontal: 20),
            ),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          constraints: BoxConstraints(maxWidth: 550),
          padding: EdgeInsets.all(4),
          margin: EdgeInsets.symmetric(horizontal: 20),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(40),
              boxShadow: [
                BoxShadow(
                    color: Colors.black.withOpacity(.1),
                    offset: Offset(0, 40),
                    blurRadius: 80)
              ]),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: screenSize.width / 4,
                padding: EdgeInsets.only(left: 4),
                child: TextField(
                  decoration: InputDecoration(
                      icon: Icon(Icons.email_outlined),
                      hintText: "Email",
                      border: InputBorder.none),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
