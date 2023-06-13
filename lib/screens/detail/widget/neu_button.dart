import 'package:flutter/material.dart';

// ignore: must_be_immutable
class NeuButton extends StatefulWidget {
final onTap;
bool isButtonPressed;
NeuButton ({this.onTap, required this.isButtonPressed});

  @override
  _NeuButtonState createState() => _NeuButtonState();
}

class _NeuButtonState extends State<NeuButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
        height: 30,
        width: 30,
        child: Icon (
          Icons.favorite,
          size: 18,
          color: widget.isButtonPressed ? Colors.grey : Colors.red,
        ),
        decoration: BoxDecoration(
          color: Colors.grey[300],
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade500,
              offset: Offset(4, 4),
              blurRadius: 17,
              spreadRadius: 1
            ),
            BoxShadow(
              color: Colors.white,
              offset: Offset (-4, -4),
              blurRadius: 17,
              spreadRadius: 1
            )
          ]
        ),
      ),
    );
  }
}