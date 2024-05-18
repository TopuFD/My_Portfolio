
import 'package:flutter/material.dart';
import 'package:visibility_detector/visibility_detector.dart';

class AboutSectionMobile extends StatefulWidget {
  const AboutSectionMobile({super.key});

  @override
  State<AboutSectionMobile> createState() => _AboutSectionMobileState();
}

class _AboutSectionMobileState extends State<AboutSectionMobile> {
  Alignment _alignment = Alignment.centerLeft;
  double _opacity = 0.0;

  void _onVisibilityChanged(VisibilityInfo info) {
    if (info.visibleFraction > 0 && _opacity == 0.0) {
      setState(() {
        // Target alignment to the center and set opacity to 1 (visible)
        _alignment = Alignment.center;
        _opacity = 1.0;
      });
    } 
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return VisibilityDetector(
      key: const Key('about-section-mobile'),
      onVisibilityChanged: _onVisibilityChanged,
      child: Container(
        width: double.maxFinite,
        color: const Color(0xff00416A),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: size.height * .15),
          child: Column(
            children: [
              AnimatedOpacity(
                duration: const Duration(seconds: 1),
                opacity: _opacity,
                child: AnimatedContainer(
                  duration: const Duration(seconds: 1),
                  curve: Curves.bounceOut,
                  alignment: _alignment,
                  child: Stack(
                    children: [
                      Container(
                        height: 200,
                        width: 200,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(100),
                        ),
                      ),
                      Positioned(
                        bottom: 5,
                        left: 5,
                        child: ClipOval(
                          child: Container(
                            height: 190,
                            width: 190,
                            color: const Color(0xff00416A),
                            child: Image.asset(
                              "images/profile.png",
                              height: 190,
                              width: 190,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: size.height * .05,
              ),
              SizedBox(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: size.width * .1),
                  child: const Column(
                    children: [
                      Text(
                        "About Me",
                        style: TextStyle(fontSize: 30, color: Colors.yellow),
                      ),
                      Text(
                        "Topu Chandra Roy",
                        style: TextStyle(fontSize: 30, color: Colors.yellow),
                      ),
                      Text(
                        "I am a dedicated Flutter Developer with 2 years of experience in building dynamic and responsive mobile applications. Passionate about continuous learning and staying updated with the latest advancements in Flutter, I strive to enhance my skills and deliver high-quality software solutions.",
                        softWrap: true,
                        textAlign: TextAlign.justify,
                      )
                    ],
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
