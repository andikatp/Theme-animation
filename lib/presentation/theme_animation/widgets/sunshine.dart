import 'package:flutter/material.dart';

class Sunshine extends StatelessWidget {
  final Widget child;
  final double radius;
  const Sunshine({
    Key? key,
    required this.child,
    required this.radius,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: radius,
      width: radius,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.1),
        shape: BoxShape.circle,
      ),
      child: Center(child: child),
    );
  }
}
