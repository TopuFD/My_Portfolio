import 'package:flutter/material.dart';
import 'package:web_myself/widgets/projectitem_mobile.dart';

class ProjectForMobile extends StatelessWidget {
  const ProjectForMobile({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: double.maxFinite,
      color: const Color(0xff00416A),
      child: Padding(
        padding: EdgeInsets.symmetric(
            vertical: size.height * .1, horizontal: size.height * .05),
        child: Column(
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
            HoverImage(
                imageUrl: "images/works/work1.jpg", hoverText: "image one"),
            HoverImage(
                imageUrl: "images/works/work2.jpg", hoverText: "image two"),
            HoverImage(
                imageUrl: "images/works/work1.jpg", hoverText: "image one"),
            HoverImage(
                imageUrl: "images/works/work2.jpg", hoverText: "image two"),
            HoverImage(
                imageUrl: "images/works/work1.jpg", hoverText: "image one"),
            HoverImage(
                imageUrl: "images/works/work2.jpg", hoverText: "image two"),
            HoverImage(
                imageUrl: "images/works/work1.jpg", hoverText: "image one"),
            HoverImage(
                imageUrl: "images/works/work2.jpg", hoverText: "image two"),
          ],
        ),
      ),
    );
  }
}
