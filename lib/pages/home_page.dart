// import 'package:flutter/material.dart';
// import 'package:web_myself/utils/size.dart';
// import 'package:web_myself/widgets/desktop_home.dart';
// import 'package:web_myself/widgets/desktop_nav.dart';
// import 'package:web_myself/widgets/mobile_drawer.dart';
// import 'package:web_myself/widgets/mobile_home.dart';
// import 'package:web_myself/widgets/mobile_nav.dart';
// import 'package:web_myself/widgets/skill_desktop.dart';
// import 'package:web_myself/widgets/skill_mobile.dart';

// class HomePage extends StatelessWidget {
//   HomePage({super.key});

//   final scaffoldKey = GlobalKey<ScaffoldState>();
//   @override
//   Widget build(BuildContext context) {
//     final mq = MediaQuery.of(context).size;
//     return LayoutBuilder(
//         builder: (BuildContext context, BoxConstraints constraints) {
//       return SafeArea(
//         child: Scaffold(
//           key: scaffoldKey,
//           endDrawer: const MobileDrawer(),
//           body: ConstrainedBox(
//             constraints: BoxConstraints(minWidth: 200),
//             child: Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
//               child: SingleChildScrollView(
//                 child: Column(children: [
//                   constraints.maxWidth > mobileSize
//                       ? DesktopNav(
//                           onLogoTap: () {},
//                         )
//                       : MobileNav(
//                           onLogoTap: () {},
//                           onMenuTap: () =>
//                               scaffoldKey.currentState?.openEndDrawer(),
//                         ),
//                   constraints.maxWidth > mobileSize
//                       ? const DesktopHome()
//                       : const MobileHome(),
                          
//                   const SizedBox(
//                     height: 50,
//                   ),
//                   // Platform section
//                   Container(
//                     child: Column(children: [
//                       const Text(
//                         "What I can do",
//                         style: TextStyle(
//                             fontSize: 28,
//                             color: Colors.white,
//                             fontWeight: FontWeight.bold),
//                       ),
//                       const SizedBox(
//                         height: 50,
//                       ),
//                       constraints.maxWidth > mobileSize
//                           ? const SkillsDesktop()
//                           : const SkillsMobile()
//                     ]),
//                   )
//                 ]),
//               ),
//             ),
//           ),
//         ),
//       );
//     });
//   }
// }
import 'package:flutter/material.dart';
import 'package:web_myself/utils/size.dart';
import 'package:web_myself/widgets/desktop_home.dart';
import 'package:web_myself/widgets/desktop_nav.dart';
import 'package:web_myself/widgets/mobile_drawer.dart';
import 'package:web_myself/widgets/mobile_home.dart';
import 'package:web_myself/widgets/mobile_nav.dart';
import 'package:web_myself/widgets/skill_desktop.dart';
import 'package:web_myself/widgets/skill_mobile.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      endDrawer: const MobileDrawer(),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return CustomScrollView(
            slivers: [
              // Navigation section
              SliverPersistentHeader(
                pinned: true, // Make the header pinned
                delegate: _SliverAppBarDelegate(
                  minHeight: kToolbarHeight,
                  maxHeight: kToolbarHeight,
                  child: constraints.maxWidth > mobileSize
                      ? DesktopNav(
                          onLogoTap: () {},
                        )
                      : MobileNav(
                          onLogoTap: () {},
                          onMenuTap: () =>
                              scaffoldKey.currentState?.openEndDrawer(),
                        ),
                ),
              ),
              // Main content section
              SliverToBoxAdapter(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                  child: Column(
                    children: [
                      constraints.maxWidth > mobileSize
                          ? const DesktopHome()
                          : const MobileHome(),
                      const SizedBox(height: 50),
                      // Platform section
                      Container(
                        child: Column(
                          children: [
                            const Text(
                              "What I can do",
                              style: TextStyle(
                                fontSize: 28,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 50),
                            constraints.maxWidth > mobileSize
                                ? const SkillsDesktop()
                                : const SkillsMobile(),


                          ],
                        ),
                      ),
                      SizedBox(height: 500,)
                    ],
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  final double minHeight;
  final double maxHeight;
  final Widget child;

  _SliverAppBarDelegate({
    required this.minHeight,
    required this.maxHeight,
    required this.child,
  });

  @override
  double get minExtent => minHeight;

  @override
  double get maxExtent => maxHeight;

  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    return SizedBox.expand(child: child);
  }

  @override
  bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
    return maxHeight != oldDelegate.maxHeight ||
        minHeight != oldDelegate.minHeight ||
        child != oldDelegate.child;
  }
}

