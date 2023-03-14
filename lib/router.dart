import 'package:flutter/material.dart';
import 'package:HEConsulting/helpers/responsive.dart';
import 'package:HEConsulting/helpers/style.dart';
import 'package:HEConsulting/pages/home/desktop.dart';
import 'package:HEConsulting/pages/home/mobile.dart';
import 'package:HEConsulting/widgets/drawer.dart';
import 'package:HEConsulting/widgets/mobile_navbar.dart';
import 'package:HEConsulting/widgets/navbar_desktop.dart';

import 'pages/about/desktop.dart';
import 'pages/about/mobile.dart';
import 'pages/contact/desktop.dart';
import 'pages/contact/mobile.dart';
import 'pages/ourOffer/desktop.dart';

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
        case '/services':
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
        case '/services':
          return DesktopServicesScreen();
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
