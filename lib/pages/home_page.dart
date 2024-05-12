
import 'package:flutter/material.dart';
import 'package:web_myself/utils/size.dart';
import 'package:web_myself/widgets/desktop_home.dart';
import 'package:web_myself/widgets/desktop_nav.dart';
import 'package:web_myself/widgets/mobile_drawer.dart';
import 'package:web_myself/widgets/mobile_home.dart';
import 'package:web_myself/widgets/mobile_nav.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(
    BuildContext context,
  ) {
    final size = MediaQuery.of(context).size;
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return Scaffold(
          key: scaffoldKey,
          backgroundColor: const Color(0xff002147),
          endDrawer:
              constraints.maxWidth > mobileSize ? null : const MobileDrawer(),
          appBar: AppBar(
              backgroundColor: const Color(0xff002147),
              toolbarHeight: 90,
              titleSpacing: 40,
              elevation: 0,
              title: constraints.maxWidth > mobileSize
                  ? DesktopNav(onLogoTap: () {})
                  : MobileNav(
                      onLogoTap: () {},
                    )),
          body: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                      vertical: 30, horizontal: size.width * 0.1),
                  child: constraints.maxWidth > mobileSize
                      ? const DesktopHome()
                      : const MobileHome(),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
