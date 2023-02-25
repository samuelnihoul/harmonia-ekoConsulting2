import 'package:flutter/material.dart';
import 'package:flutter_web_example/constants/content.dart';
import 'package:flutter_web_example/helpers/style.dart';
import 'package:flutter_web_example/widgets/bottom_text_widget.dart';

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
                      child: Text(heroTextFR, style: h3),
                    ),
                    Text(taglineFR, style: h1),
                    Text(mainParagraphFR, style: h2),
                    SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                    onPressed:(){Navigator.pushNamed(context,'/ourServices');},
child:Row(mainAxisAlignment:MainAxisAlignment.end,children:[Text('Découvrir'),Icon(Icons.arrow_right)]),),
                    SizedBox(height: screenSize.height / 14),
                    Visibility(
                      visible: screenSize.height > 700,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          BottomText(
                            mainText: "20+",
                            secondaryText: "Services",
                          ),
                          BottomText(
                            mainText: "1000+",
                            secondaryText: "T CO2eq évitées",
                          ),
                          BottomText(
                            mainText: "10+",
                            secondaryText: "Clients satisfaits",
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
