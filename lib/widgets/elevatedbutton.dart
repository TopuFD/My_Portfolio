import 'package:flutter/material.dart';

class CustomElevatedButton extends StatefulWidget {
  final String text;
  final VoidCallback? onTap;
  const CustomElevatedButton(
      {super.key, required this.text, required this.onTap,});

  @override
  State<CustomElevatedButton> createState() => _CustomElevatedButtonState();
}

class _CustomElevatedButtonState extends State<CustomElevatedButton> {
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      width: 280,
      child: ElevatedButton(
          onHover: (value) {
            setState(() {
              isHover = value;
            });
          },
          style: ButtonStyle(
            elevation: MaterialStateProperty.all(10),
            backgroundColor: MaterialStateProperty.all(Colors.white),
            shape: MaterialStateProperty.all(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10))),
            overlayColor: const MaterialStatePropertyAll(Color(0xFFFF0000)),
            shadowColor: const MaterialStatePropertyAll(Color(0xFFFFFFFF)),
          ),
          onPressed: widget.onTap,
          child: Text(
            widget.text,
            style: TextStyle(
                fontSize: 20,
                color: isHover ? const Color(0xFFFFFFFF) : const Color(0xFF000000)),
          )),
    );
  }
}
