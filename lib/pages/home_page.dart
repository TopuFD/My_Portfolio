import 'package:flutter/material.dart';
import 'package:web_myself/utils/size.dart';
import 'package:web_myself/widgets/desktop_home.dart';
import 'package:web_myself/widgets/desktop_nav.dart';
import 'package:web_myself/widgets/mobile_drawer.dart';
import 'package:web_myself/widgets/mobile_home.dart';
import 'package:web_myself/widgets/mobile_nav.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context).size;
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      return SafeArea(
        child: Scaffold(
          key: scaffoldKey,
          endDrawer: const MobileDrawer(),
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
            child: Column(children: [
              constraints.maxWidth > mobileSize
                  ? DesktopNav(
                      onLogoTap: () {},
                    )
                  : MobileNav(
                      onLogoTap: () {},
                      onMenuTap: () => scaffoldKey.currentState?.openEndDrawer(),
                    ),
              constraints.maxWidth > mobileSize
                  ? const DesktopHome()
                  : const MobileHome()
            ]),
          ),
        ),
      );
    });
  }
}
