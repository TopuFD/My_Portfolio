import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:web_myself/widgets/hoverhomeButton.dart';
import 'package:web_myself/widgets/profile_image.dart';

class MobileHome extends StatefulWidget {
  const MobileHome({super.key});

  @override
  State<MobileHome> createState() => _MobileHomeState();
}

class _MobileHomeState extends State<MobileHome> {
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context).size;
    return Center(
      child: Padding(
        padding: EdgeInsets.only(
          left: mq.width * .1,
          right: mq.width * .1,
          bottom: mq.width * .1,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const ProfileAnimation(),
            SizedBox(
              height: mq.height * .15,
            ),
            const Text(
              "Hi ! i'm Topu Roy",
              style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
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
            SizedBox(
              height: 60,
              width: 280,
              child: ElevatedButton(
                  onHover: (value) {
                    setState(() {
                      isHover = value;
                    });
                  },
                  style: ButtonStyle(
                    elevation: MaterialStateProperty.all(10),
                    backgroundColor:
                        MaterialStateProperty.all(Colors.white),
                    shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                    overlayColor:
                        const MaterialStatePropertyAll(Color(0xFFFF0000)),
                    shadowColor:
                        const MaterialStatePropertyAll(Color(0xFFFFFFFF)),
                  ),
                  onPressed: () {},
                  child: Text(
                    "Read More",
                    style: TextStyle(
                        fontSize: 20,
                        color: isHover
                            ? Color(0xFFFFFFFF)
                            : Color(0xFF000000)),
                  )),
            ),
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
    );
  }
}
