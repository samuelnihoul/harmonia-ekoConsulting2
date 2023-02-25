import 'package:flutter/material.dart';
import 'package:flutter_web_example/constants/content.dart';
import 'package:flutter_web_example/helpers/style.dart';
import 'package:flutter_web_example/widgets/bottom_text_widget.dart';

class MobileScreen extends StatefulWidget {
  const MobileScreen({Key? key}) : super(key: key);

  @override
  _MobileScreenState createState() => _MobileScreenState();
}

class _MobileScreenState extends State<MobileScreen> {
  // Create a ScrollController to monitor the scrolling behavior
  final _scrollController = ScrollController();

  // Set the initial visibility of the image to true
  bool _showImage = true;

  @override
  void initState() {
    super.initState();

    // Add a listener to the ScrollController to detect scrolling events
    _scrollController.addListener(_onScroll);
  }

  // This method is called every time the user scrolls
  void _onScroll() {
    // Check if the user has scrolled past the top of the page
    if (_scrollController.offset > 0 && _showImage) {
      // If so, hide the image by setting _showImage to false
      setState(() {
        _showImage = false;
      });
    } else if (_scrollController.offset == 0 && !_showImage) {
      // If the user has scrolled back to the top of the page, show the image again
      setState(() {
        _showImage = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return Scaffold(
      body: SingleChildScrollView(
        // Attach the ScrollController to the SingleChildScrollView
        controller: _scrollController,
        child: Column(
          children: [
            // Only show the image if _showImage is true
            if (_showImage)
              Image.asset("images/mascott.png", fit: BoxFit.fitHeight),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: screenSize.height * 0.2),
                  Container(
                    alignment: Alignment.centerLeft,
                    margin: EdgeInsets.only(bottom: 15),
                    child: Text(heroTextFR, style: _showImage ? h3 : h3m),
                  ),
                  if (_showImage)
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/ourServices');
                      },
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text('Découvrir'),
                            Icon(Icons.arrow_right)
                          ]),
                    ),
                  if (_showImage) SizedBox(height: screenSize.height),
                  if (!_showImage) Text(taglineFR, style: h1m),
                  if (!_showImage) Text(mainParagraphFR, style: h2m),
                  SizedBox(
                    height: 20,
                  ),
                  if (!_showImage)
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/ourServices');
                      },
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text('Découvrir'),
                            Icon(Icons.arrow_right)
                          ]),
                    ),
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
                            secondaryText: "Clients satisfaits"),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
