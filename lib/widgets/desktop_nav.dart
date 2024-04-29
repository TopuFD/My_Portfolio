import 'package:flutter/material.dart';
import 'package:web_myself/utils/nav_buttons.dart';
import 'package:web_myself/widgets/logo.dart';

class DesktopNav extends StatelessWidget {
  const DesktopNav({super.key,required this.onLogoTap});
  final VoidCallback onLogoTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        InkWell(onTap: onLogoTap,child: const MyLogo()),
        Container(
          decoration: BoxDecoration(
              color: const Color(0x953A3A3A),
              borderRadius: BorderRadius.circular(15)),
          child: Row(children: [
            for (var i = 0; i < ButtonList.navButtons.length; i++)
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: TextButton(
                    onPressed: () {}, child: Text(ButtonList.navButtons[i])),
              ),
          ]),
        )
      ],
    );
  }
}
