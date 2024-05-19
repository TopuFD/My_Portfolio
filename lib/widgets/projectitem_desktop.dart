import 'package:flutter/material.dart';

class DesktopProjectItem extends StatefulWidget {
  final String imageUrl;
  final String hoverText;

  DesktopProjectItem({required this.imageUrl, required this.hoverText});

  @override
  _HoverImageState createState() => _HoverImageState();
}

class _HoverImageState extends State<DesktopProjectItem> {
  double _opacity = 0.0;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return MouseRegion(
      onEnter: (_) => setState(() => _opacity = 1.0),
      onExit: (_) => setState(() => _opacity = 0.0),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8,vertical:  8),
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.network(
                widget.imageUrl,
                width: size.width * .28,
                height: size.height * .4,
                fit: BoxFit.cover,
              ),
            ),
            Positioned.fill(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: AnimatedOpacity(
                  opacity: _opacity,
                  duration: Duration(milliseconds: 300),
                  child: Container(
                    color: Colors.black.withOpacity(0.7),
                    child: Center(
                      child: Text(
                        widget.hoverText,
                        style: TextStyle(color: Colors.white, fontSize: 24),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
