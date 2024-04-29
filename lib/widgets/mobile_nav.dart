import 'package:flutter/material.dart';
import 'package:web_myself/widgets/logo.dart';

class MobileNav extends StatelessWidget {
  const MobileNav({super.key, required this.onLogoTap, required this.onMenuTap});

  final VoidCallback? onLogoTap;
  final VoidCallback? onMenuTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        InkWell(onTap: onLogoTap,child: const MyLogo()),
        IconButton(
            onPressed: onMenuTap,
            icon: const Icon(Icons.menu))
      ],
    );
  }
}
