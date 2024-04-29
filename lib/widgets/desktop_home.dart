import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class DesktopHome extends StatelessWidget {
  const DesktopHome({super.key});

  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context).size;
    return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: mq.height * .6,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Hi ! i'm Topu Roy",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              AnimatedTextKit(
                repeatForever: true,
                animatedTexts: [
                  TypewriterAnimatedText('A Flutter Developer',
                      speed: const Duration(milliseconds: 100)),
                  TypewriterAnimatedText(
                      'Expert of Dart, Flutter,\n Firebase,Api Integration,GetX',
                      speed: const Duration(milliseconds: 100)),
                ],
              ),
              const SizedBox(
                height: 8,
              ),
              SizedBox(
                  width: 200,
                  child: ElevatedButton(
                      onPressed: () {}, child: const Text("Get in touch")))
            ],
          ),
          SizedBox(
            width: mq.width * .07,
          ),
          ClipOval(
            child: CircleAvatar(
              backgroundColor: Colors.transparent,
              radius: mq.height * .2,
              child: Image.asset(
                "images/profile.png",
                height: mq.height * 0.5,
                width: mq.width * 0.5,
                fit: BoxFit.fill,
              ),
            ),
          )
        ]);
  }
}
