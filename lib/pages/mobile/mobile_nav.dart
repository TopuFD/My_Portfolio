import 'package:flutter/material.dart';
import 'package:web_myself/widgets/logo.dart';

class MobileNav extends StatelessWidget {
  const MobileNav({super.key, required this.onLogoTap,});

  final VoidCallback? onLogoTap;

  @override
  Widget build(BuildContext context) {

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        InkWell(onTap: onLogoTap,child: const MyLogo()),
      ],
    );
  }
}
