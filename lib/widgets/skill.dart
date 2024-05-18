
import 'package:flutter/material.dart';

class SkillContainer extends StatefulWidget {
  final String skill;
  final String iconLink;

  const SkillContainer(this.skill, {Key? key, required this.iconLink}) : super(key: key);

  @override
  _SkillContainerState createState() => _SkillContainerState();
}

class _SkillContainerState extends State<SkillContainer> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => _isHovered = true),
      onExit: (_) => setState(() => _isHovered = false),
      child: AnimatedContainer(
          duration: Duration(milliseconds: 200),
          height: 50,
          width: 120,
          decoration: BoxDecoration(
            color: _isHovered ? Colors.red : Colors.white,
            borderRadius: BorderRadius.circular(15),
            boxShadow: _isHovered
                ? [
                    BoxShadow(
                      color: Colors.white.withOpacity(.8),
                      blurRadius: 10,
                      spreadRadius: 2,
                    )
                  ]
                : null,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(widget.iconLink,height: 40,width: 40,),
              SizedBox(width: 5,),
              Text(
                widget.skill,
                style: TextStyle(
                    color: _isHovered ? Colors.white : Colors.black,
                    fontWeight: FontWeight.bold),
              ),
            ],
          )),
    );
  }
}
