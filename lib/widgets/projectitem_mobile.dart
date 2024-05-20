import 'package:flutter/material.dart';
import 'package:web_myself/widgets/elevatedbutton.dart';

class HoverImage extends StatefulWidget {
  final String imageUrl;
  final String hoverText;
  final String projectTitle;
  final String projectDece;
  final VoidCallback? ontap;

  const HoverImage(
      {super.key, required this.imageUrl,
      required this.hoverText,
      required this.projectTitle,
      required this.projectDece,
      this.ontap});

  @override
  // ignore: library_private_types_in_public_api
  _HoverImageState createState() => _HoverImageState();
}

class _HoverImageState extends State<HoverImage> {
  double _opacity = 0.0;
  bool isHover = false;

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
                width: 400,
                height: 200,
                fit: BoxFit.fill,
              ),
            ),
            Positioned.fill(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: AnimatedOpacity(
                  opacity: _opacity,
                  duration: const Duration(milliseconds: 300),
                  child: Container(
                      color: Colors.black.withOpacity(0.7),
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: size.width * .05),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              widget.projectTitle,
                              style: const TextStyle(
                                fontSize: 25,
                                color: Colors.yellow,
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              widget.projectDece,
                              style: const TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                              ),
                              textAlign: TextAlign.justify,
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            CustomElevatedButton(text: "See Code", onTap: widget.ontap)
                          ],
                        ),
                      )),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
