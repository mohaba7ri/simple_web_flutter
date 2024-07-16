import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AnimatedFloatingButton extends StatefulWidget {
  final String image;
  final String text;
  final Color initialColor;
  final Color hoverColor;
  final VoidCallback onPressed;

  const AnimatedFloatingButton({
    Key? key,
    required this.image,
    required this.text,
    required this.initialColor,
    required this.hoverColor,
    required this.onPressed,
  }) : super(key: key);

  @override
  _AnimatedFloatingButtonState createState() => _AnimatedFloatingButtonState();
}

class _AnimatedFloatingButtonState extends State<AnimatedFloatingButton> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => _onHover(true),
      onExit: (_) => _onHover(false),
      child: AnimatedContainer(
        duration: Duration(milliseconds: 300),
      width: 180,
        height: 50,
        decoration: BoxDecoration(
          color: _isHovered ? widget.hoverColor : widget.initialColor,
          borderRadius: BorderRadius.circular(25),
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
            borderRadius: BorderRadius.circular(25),
            child: Center(
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset(widget.image  ,   color: _isHovered ? Colors.black : Colors.white,),
                  SizedBox(width: 8),
                  Text(
                    widget.text,
                    style: TextStyle(
                        color: _isHovered ? Colors.black : Colors.white,
                        fontSize: 16),
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
