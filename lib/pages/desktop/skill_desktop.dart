import 'package:flutter/material.dart';
import 'package:web_myself/widgets/piechart_skill.dart';
import 'package:web_myself/widgets/skill_item.dart';

class SkillSectionDesktop extends StatelessWidget {
  const SkillSectionDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.symmetric(vertical: size.height * .1,horizontal: size.height * .05),
      child: Column(
        children: [
          const Text(
            "My Skills",
            style: TextStyle(
                fontSize: 25, color: Colors.yellow, fontWeight: FontWeight.bold),
          ),
          const Text(
            "3+ YEARS OF EXPERIENCE",
            style: TextStyle(
                fontSize: 25, color: Colors.yellow, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: size.height * .1,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.all(12),
                width: 400,
                decoration: BoxDecoration(
                    color: Colors.black,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.white.withOpacity(.5),
                          blurRadius: 5,
                          spreadRadius: 3)
                    ],
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(color: Colors.white)),
                child: const Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        SkillContainer(
                          "Dart",
                          iconLink: "images/skill_logo/dart.png",
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        SkillContainer(
                          "OOP",
                          iconLink: "images/skill_logo/oop.png",
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        SkillContainer(
                          "Api",
                          iconLink: "images/skill_logo/api.png",
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        SkillContainer(
                          "Firebase",
                          iconLink: "images/skill_logo/firebase.png",
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        SkillContainer(
                          "Git",
                          iconLink: "images/skill_logo/git.png",
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        SkillContainer(
                          "Github",
                          iconLink: "images/skill_logo/github.png",
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        SkillContainer(
                          "Canva",
                          iconLink: "images/skill_logo/canva.png",
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        SkillContainer(
                          "HTML",
                          iconLink: "images/skill_logo/html.png",
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        SkillContainer(
                          "CSS",
                          iconLink: "images/skill_logo/css.png",
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: size.height * .1,
              ),
              SkillInPieChart(),
            ],
          ),
        ],
      ),
    );
  }
}
