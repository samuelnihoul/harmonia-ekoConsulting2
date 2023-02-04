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
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              for (final item in itemList) NavbarItem(item),
              Expanded(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Text(
                    'Copyright © ${DateTime.now().year} | harmonia-eko',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                    ),
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
    return InkWell(
      child: Text(item.name),
      onTap: () {
        Navigator.pushNamed(context, item.route);
      },
    );
  }

  final INavbarItem item;

  NavbarItem(this.item, {super.key});
}
