import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:web_myself/widgets/elevatedbutton.dart';
import 'package:web_myself/widgets/hoverhomeButton.dart';
import 'package:web_myself/widgets/profile_image.dart';

class DesktopHome extends StatefulWidget {
  const DesktopHome({super.key});

  @override
  State<DesktopHome> createState() => _DesktopHomeState();
}

class _DesktopHomeState extends State<DesktopHome> {
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.only(
        left: mq.width * .1,
        right: mq.width * .1,
        bottom: mq.width * .1,
      ),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: mq.width * .3,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: mq.height * .2,
                  ),
                  const Text(
                    "Hi ! i'm Topu",
                    style: TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.w800,
                        color: Colors.white),
                  ),
                  AnimatedTextKit(
                    repeatForever: true,
                    animatedTexts: [
                      TypewriterAnimatedText('A Flutter Developer',
                          textStyle: const TextStyle(
                              fontSize: 30, color: Colors.yellow),
                          speed: const Duration(milliseconds: 100)),
                      TypewriterAnimatedText('Software Developer',
                          textStyle: const TextStyle(
                              fontSize: 30, color: Colors.yellow),
                          speed: const Duration(milliseconds: 100)),
                    ],
                  ),
                  SizedBox(
                    height: mq.height * .04,
                  ),
                  const Text(
                    "I'm expert in Flutter Development. I have been working as a Flutter Developer over the last 3 years. if you need any help, you can contact me. Now i can create your Software visible and perfectly.",
                    textAlign: TextAlign.justify,
                    style: TextStyle(fontSize: 14, color: Colors.grey),
                  ),
                  SizedBox(
                    height: mq.height * .03,
                  ),
                  CustomElevatedButton(text: "Read More", onTap: (){}),
                  SizedBox(
                    height: mq.height * .08,
                  ),
                  SizedBox(
                    width: 280,
                    child: Column(
                      children: [
                        const Text(
                          "Contact Me",
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                        SizedBox(
                          height: mq.height * .02,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            HoverContainer(
                              icon: const Icon(
                                Icons.facebook_sharp,
                              ),
                            ),
                            HoverContainer(
                              icon: const Icon(
                                Icons.call,
                              ),
                            ),
                            HoverContainer(
                              icon: const Icon(
                                Icons.call,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            const ProfileAnimation()
          ]),
    );
  }
}
