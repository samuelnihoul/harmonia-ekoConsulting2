import 'package:flutter/material.dart';
import 'package:flutter_web_example/helpers/style.dart';

import '../constants/navbarItem.dart';

class MobileMenu extends StatelessWidget {
  const MobileMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: active,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              for (final item in itemList) NavbarItem(item),
              Align(
                alignment: Alignment.bottomCenter,
                child: Text(
                  'Copyright © ${DateTime.now().year} | harmonia-eko',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class NavbarItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      child: Text(item.name),
      onPressed: () {
        Navigator.pushNamed(context, item.route);
      },
    );
  }

  final INavbarItem item;

  NavbarItem(this.item, {super.key});
}
