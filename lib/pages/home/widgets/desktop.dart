import 'package:flutter/material.dart';
import 'package:flutter_web_example/constants/content.dart';
import 'package:flutter_web_example/helpers/style.dart';
import 'package:flutter_web_example/widgets/bottom_text_widget.dart';
import 'package:flutter_web_example/widgets/button.dart';
import 'package:google_fonts/google_fonts.dart';

class DesktopScreen extends StatelessWidget {
  const DesktopScreen({super.key});
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(color: Color(0xffff100d08)),
      height: MediaQuery.of(context).size.height,
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Expanded(
          child: Center(
            child: Container(
              width: screenSize.width / 2,
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      alignment: Alignment.centerLeft,
                      margin: EdgeInsets.only(bottom: 15),
                      child: Text(heroText, style: h3),
                    ),
                    Text(tagline, style: h1),
                    Text(mainParagraph, style: h2),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      padding: EdgeInsets.all(8),
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
                            padding: EdgeInsets.only(left: 8),
                            child: TextField(
                              decoration: InputDecoration(
                                  icon: Icon(Icons.email_outlined),
                                  hintText: "Entrez votre email",
                                  border: InputBorder.none),
                            ),
                          ),
                          CustomButton(
                            onPressed: () {
                              Navigator.pushNamed(context, 'ourServices');
                            },
                            text: "Découvrir",
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: screenSize.height / 14),
                    Visibility(
                      visible: screenSize.height > 700,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          
                          BottomText(
                            mainText: "20+",
                            secondaryText: "Well-Rounded Services",
                          ),
                          BottomText(
                            mainText: "1000+",
                            secondaryText: "T CO2eq avoided",
                          ),
                          BottomText(
                            mainText: "10+",
                            secondaryText: "Happy Clients",
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
        Image.asset("images/mascott.png", fit: BoxFit.fitHeight),
      ]),
    );
  }
}
