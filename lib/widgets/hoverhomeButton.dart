
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class HoverContainer extends StatefulWidget {
  Icon icon;
  HoverContainer({super.key, required this.icon});

  @override
  _HoverContainerState createState() => _HoverContainerState();
}

class _HoverContainerState extends State<HoverContainer> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => _isHovered = true),
      onExit: (_) => setState(() => _isHovered = false),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        height: 50,
        width: 50,
        decoration: BoxDecoration(
          color:
              _isHovered ? const Color(0xFFFF0000) : Colors.white,
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
              color: _isHovered ? const Color(0xFFFFFFFF) : const Color(0xFF000000),
              blurRadius: 4.0,
              spreadRadius: 2.0,
            )
          ],
        ),
        child: Center(
          child: Icon(
            widget.icon.icon,
            color: _isHovered ? Colors.white : Colors.black,
          ),
        ),
      ),
    );
  }
}
