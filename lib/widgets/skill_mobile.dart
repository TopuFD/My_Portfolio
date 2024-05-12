import 'package:flutter/material.dart';
import 'package:web_myself/utils/skill_item.dart';

class SkillsMobile extends StatelessWidget {
  const SkillsMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ConstrainedBox(
          constraints: BoxConstraints(minWidth: 200, maxWidth: 400),
          child: Wrap(
            spacing: 5,
            runSpacing: 5,
            children: [
              for (var i = 0; i < skillPlatform.length; i++)
                Container(
                  width: 150,
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(221, 110, 110, 110),
                      borderRadius: BorderRadius.circular(5)),
                  child: ListTile(
                    leading: Image.asset(
                      skillPlatform[i]["img"],
                      width: 30,
                      height: 30,
                    ),
                    title: Text(skillPlatform[i]["title"]),
                  ),
                )
            ],
          ),
        ),
        SizedBox(
          height: 50,
        ),
        ConstrainedBox(
          constraints: BoxConstraints(maxWidth: 400, minWidth: 200),
          child: Wrap(
            spacing: 5,
            runSpacing: 5,
            children: [
              for (var i = 0; i < skillItem.length; i++)
                Container(
                  width: 150,
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(221, 110, 110, 110),
                      borderRadius: BorderRadius.circular(5)),
                  child: ListTile(
                    leading: Image.asset(
                      skillItem[i]["img"],
                      width: 30,
                      height: 30,
                    ),
                    title: Text(skillItem[i]["title"]),
                  ),
                )
            ],
          ),
        )
      ],
    );
  }
}
