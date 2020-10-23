import 'package:flutter/material.dart';

// ignore: must_be_immutable
class RetroButton extends StatefulWidget {
  Widget child;
  Color upperColor;
  Color lowerColor;
  double width;
  double height;
  Color borderColor;
  RetroButton({this.child,this.upperColor,this.lowerColor,this.width,this.height,this.borderColor});
  @override
  _RetroButtonState createState() => _RetroButtonState();
}

class _RetroButtonState extends State<RetroButton> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Transform.translate(
          offset: Offset(4.0, 4.0),
          child: Container(
            width: widget.width,
            height: widget.height,
            decoration: BoxDecoration(
              color: widget.lowerColor,
            ),
          ),
        ),
        Container(
          width: widget.width,
          height: widget.height,
          decoration: BoxDecoration(
            color: widget.upperColor,
            border: Border.all(
              color: widget.borderColor
            )
          ),
          child: widget.child,
        ),
      ],
    );
  }
}