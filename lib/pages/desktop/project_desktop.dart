import 'package:flutter/material.dart';
import 'package:web_myself/widgets/projectitem_desktop.dart';

class ProjectFofDesktop extends StatelessWidget {
  const ProjectFofDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: double.maxFinite,
      color: const Color(0xff00416A),
      child: Padding(
        padding: EdgeInsets.symmetric(
            vertical: size.height * .05, horizontal: size.height * .05),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              "Latest Project",
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.yellow),
            ),
            SizedBox(
              height: size.height * .05,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                DesktopProjectItem(
                    imageUrl: "images/works/work1.jpg",
                    hoverText: "project one"),
                DesktopProjectItem(
                    imageUrl: "images/works/work2.jpg",
                    hoverText: "project two"),
                DesktopProjectItem(
                    imageUrl: "images/works/work1.jpg",
                    hoverText: "project three"),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                DesktopProjectItem(
                    imageUrl: "images/works/work1.jpg",
                    hoverText: "project one"),
                DesktopProjectItem(
                    imageUrl: "images/works/work2.jpg",
                    hoverText: "project two"),
                DesktopProjectItem(
                    imageUrl: "images/works/work1.jpg",
                    hoverText: "project three"),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                DesktopProjectItem(
                    imageUrl: "images/works/work1.jpg",
                    hoverText: "project one"),
                DesktopProjectItem(
                    imageUrl: "images/works/work2.jpg",
                    hoverText: "project two"),
                DesktopProjectItem(
                    imageUrl: "images/works/work1.jpg",
                    hoverText: "project three"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
