import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyOutlinedButton extends StatelessWidget {
  final VoidCallback onPressed;
  final Widget child;
  final ButtonStyle? style;
  final Gradient? gradient;
  final double thickness;
  const MyOutlinedButton({Key? key,
    required this.onPressed,
    required this.child,
    this.gradient,
     this.thickness=1,
     this.style}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        gradient: gradient,
        borderRadius: BorderRadius.circular(5)
      ),
      child: Container(
        height: 30,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Colors.black

        ),
        margin: EdgeInsets.all(thickness),
        child: OutlinedButton(
            onPressed: onPressed,
            child: child,
          style: style,
        ),
      ),
    );
  }
}
