import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AnimatedFloatingButton3 extends StatefulWidget {
  final String image;
  final String text;
  final Color initialColor;
  final Color hoverColor;
  final VoidCallback onPressed;

  const AnimatedFloatingButton3({
    Key? key,
    required this.image,
    required this.text,
    required this.initialColor,
    required this.hoverColor,
    required this.onPressed,
  }) : super(key: key);

  @override
  _AnimatedFloatingButton3State createState() =>
      _AnimatedFloatingButton3State();
}

class _AnimatedFloatingButton3State extends State<AnimatedFloatingButton3> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => _onHover(true),
      onExit: (_) => _onHover(false),
      child: AnimatedContainer(
        duration: Duration(milliseconds: 300),
        width: 100,
        height: 30,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black, width: 2),
          color: _isHovered ? widget.hoverColor : widget.initialColor,
          borderRadius: BorderRadius.circular(6),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2), // Shadow color
              spreadRadius: 3, // Spread radius
              blurRadius: 5, // Blur radius
              offset: Offset(0, 3), // Shadow position
            ),
          ],
        ),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: widget.onPressed,
            borderRadius: BorderRadius.circular(10),
            child: Center(
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset(
                    widget.image,
                    color: _isHovered ? Colors.white : Colors.black,
                    scale: 2,
                  ),
                  SizedBox(width: 4),
                  Text(
                    widget.text,
                    style: TextStyle(
                        color: _isHovered ? Colors.white : Colors.black,
                        fontSize: 12),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _onHover(bool isHovered) {
    setState(() {
      _isHovered = isHovered;
    });
  }
}
