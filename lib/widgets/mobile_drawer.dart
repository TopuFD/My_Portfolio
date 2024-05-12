import 'package:flutter/material.dart';
import 'package:web_myself/utils/nav_buttons.dart';

class MobileDrawer extends StatelessWidget {
  const MobileDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
        child: Column(
          children: [
            // ignore: prefer_const_constructors
            Align(
              alignment: Alignment.topLeft,
              child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.close)),
            ),
            for (var i = 0; i < ButtonList.navButtons.length; i++)
              ListTile(
                leading: ButtonList.navIcons[i],
                title: Text(ButtonList.navButtons[i]),
              )
          ],
        ),
      ),
    );
  }
}
