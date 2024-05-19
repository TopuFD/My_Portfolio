import 'package:flutter/material.dart';
import 'package:web_myself/utils/size.dart';
import 'package:web_myself/pages/desktop/about_desktop.dart';
import 'package:web_myself/pages/mobile/about_mobile.dart';
import 'package:web_myself/pages/desktop/desktop_home.dart';
import 'package:web_myself/pages/desktop/desktop_nav.dart';
import 'package:web_myself/pages/mobile/mobile_drawer.dart';
import 'package:web_myself/pages/mobile/mobile_home.dart';
import 'package:web_myself/pages/mobile/mobile_nav.dart';
import 'package:web_myself/pages/desktop/project_desktop.dart';
import 'package:web_myself/pages/mobile/project_mobile.dart';
import 'package:web_myself/pages/desktop/skill_desktop.dart';
import 'package:web_myself/pages/mobile/skill_mobile.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(
    BuildContext context,
  ) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return Scaffold(
          key: scaffoldKey,
          backgroundColor: const Color(0xff002147),
          endDrawer:
              constraints.maxWidth > mobileSize ? null : const MobileDrawer(),
          appBar: AppBar(
              backgroundColor: const Color(0xff002147),
              toolbarHeight: 60,
              titleSpacing: 40,
              elevation: 5,
              title: constraints.maxWidth > mobileSize
                  ? DesktopNav(onLogoTap: () {})
                  : MobileNav(
                      onLogoTap: () {},
                    )),
          body: SingleChildScrollView(
            child: Column(
              children: [
                //Home Section====================>
                constraints.maxWidth > mobileSize
                    ? const DesktopHome()
                    : const MobileHome(),

                // About Section====================>
                constraints.maxWidth > mobileSize
                    ? const AboutSecDesktop()
                    : const AboutSectionMobile(),
                // skill Section====================>
                constraints.maxWidth > mobileSize
                    ? const SkillSectionDesktop()
                    : const SkillSectionMobile(),


                // Project Section====================>
                constraints.maxWidth > mobileSize
                    ? const ProjectFofDesktop()
                    : const ProjectForMobile(),

                
              ],
            ),
          ),
        );
      },
    );
  }
}
