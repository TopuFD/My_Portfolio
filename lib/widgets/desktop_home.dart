import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:web_myself/widgets/hoverhomeButton.dart';
import 'package:web_myself/widgets/profile_image.dart';

class DesktopHome extends StatelessWidget {
  const DesktopHome({super.key});

  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context).size;
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: mq.width * .3,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
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
                        textStyle:
                            const TextStyle(fontSize: 30, color: Colors.yellow),
                        speed: const Duration(milliseconds: 100)),
                    TypewriterAnimatedText('Software Developer',
                        textStyle:
                            const TextStyle(fontSize: 30, color: Colors.yellow),
                        speed: const Duration(milliseconds: 100)),
                  ],
                ),
                SizedBox(
                  height: mq.height * .04,
                ),
                const Text(
                  "I'm expert in Flutter Development. I have been working as a Flutter Developer over the last 3 years. if you need any help, you can contact me. Now i can create your Software visible and perfectly.",
                  style: TextStyle(fontSize: 14, color: Colors.grey),
                ),
                SizedBox(
                  height: mq.height * .03,
                ),
                SizedBox(
                    width: 280,
                    height: 60,
                    child: ElevatedButton(
                        style: ButtonStyle(
                          elevation: MaterialStateProperty.all(8),
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10))),
                          overlayColor: const MaterialStatePropertyAll(
                              Color.fromARGB(255, 255, 0, 0)),
                          shadowColor:
                              const MaterialStatePropertyAll(Colors.white),
                        ),
                        onPressed: () {},
                        child: const Text("Get in touch"))),
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
        ]);
  }
}
