import 'package:flutter/material.dart';
import 'package:flutter_web_example/helpers/responsive.dart';
import 'package:flutter_web_example/helpers/style.dart';
import 'package:flutter_web_example/pages/home/desktop.dart';
import 'package:flutter_web_example/pages/home/mobile.dart';
import 'package:flutter_web_example/widgets/drawer.dart';
import 'package:flutter_web_example/widgets/mobile_navbar.dart';
import 'package:flutter_web_example/widgets/navbar_desktop.dart';

import 'pages/about/desktop.dart';
import 'pages/about/mobile.dart';
import 'pages/contact/desktop.dart';
import 'pages/contact/mobile.dart';
import 'pages/ourOffer/desktop.dart';
import 'pages/ourOffer/mobile.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    Widget bodyDesktop() {
      switch (ModalRoute.of(context)?.settings.name) {
        case '/about':
          return DesktopAboutScreen();
        case '/ourOffer':
          return DesktopServicesScreen();
        case '/contact':
          return DesktopContactScreen();
        default:
          return DesktopScreen();
      }
    }

    Widget bodyMobile() {
      switch (ModalRoute.of(context)?.settings.name) {
        case '/about':
          return MobileAboutScreen();
        case '/ourClients':
          return MobileServicesScreen();
        case '/contact':
          return MobileContactScreen();
        default:
          return MobileScreen();
      }
    }

    return Scaffold(
        key: scaffoldKey,
        appBar: ResponsiveWidget.isSmallScreen(context)
            ? mobileTopBar(scaffoldKey) as PreferredSizeWidget
            : PreferredSize(
                preferredSize: Size(screenSize.width, 1000),
                child: NavBar(),
              ),
        drawer: MobileMenu(),
        backgroundColor: bgColor,
        body: ResponsiveWidget(
          largeScreen: bodyDesktop(),
          smallScreen: bodyMobile(),
          mediumScreen: bodyDesktop(),
        ));
  }
}
