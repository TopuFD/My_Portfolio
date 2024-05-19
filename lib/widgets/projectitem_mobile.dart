import 'package:flutter/material.dart';

class HoverImage extends StatefulWidget {
  final String imageUrl;
  final String hoverText;

  HoverImage({required this.imageUrl, required this.hoverText});

  @override
  _HoverImageState createState() => _HoverImageState();
}

class _HoverImageState extends State<HoverImage> {
  double _opacity = 0.0;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return MouseRegion(
      onEnter: (_) => setState(() => _opacity = 1.0),
      onExit: (_) => setState(() => _opacity = 0.0),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: size.height * .02),
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.network(
                widget.imageUrl,
                width: size.width * .8,
                height: size.height * .3,
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
