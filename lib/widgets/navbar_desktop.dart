import 'package:flutter/material.dart';
import 'package:flutter_web_example/helpers/style.dart';
import 'package:flutter_web_example/widgets/button.dart';
import 'package:google_fonts/google_fonts.dart';
import '../constants/navbarItem.dart';
class NavBar extends StatefulWidget {
  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  final List _isHovering = [
    false,
    false,
  ];

  @override
  Widget build(BuildContext context) {
    var _width = MediaQuery.of(context).size.width;

    return PreferredSize(
      preferredSize: Size(_width, 1000),
      child: Container(
        color: Colors.transparent,
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: 20,
              ),
              Image.asset(
                "assets/images/logo.png",
                height: 50,
              ),
              SizedBox(
                width: _width / 100,
              ),
              Text('HE CONSULTING', style: navbarTitle),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
for (item in itemList)
                    SizedBox(width: _width / 8),
                    InkWell(
                      onHover: (value) {
                        setState(() {
                          value
                              ? _isHovering[0] = true
                              : _isHovering[0] = false;
                        });
                      },
                      hoverColor: Colors.transparent,
                      onTap: () {
                        Navigator.pushNamed(context, item.route);
                      },
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          SizedBox(
                            height: 12,
                          ),
                          Text(
                            item.name,
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: _isHovering[0] ? active : active,
                            ),
                          ),
                          SizedBox(height: 5),
                          Visibility(
                            maintainAnimation: true,
                            maintainState: true,
                            maintainSize: true,
                            visible: _isHovering[0],
                            child: Container(
                              decoration: BoxDecoration(
                                  color: disable,
                                  borderRadius: BorderRadius.circular(20)),
                              height: 7,
                              width: 7,
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(width: _width / 20),
                  ],
                ),
              ),
              CustomButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/ourServices');
                },
                text: "Découvrir",
              ),
              SizedBox(width: _width / 40),
            ],
          ),
        ),
      ),
    );
  }
}
