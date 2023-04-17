import 'package:flutter/material.dart';
import 'package:flutter_application_2/presentation/theme_animation/widgets/sunshine.dart';

class Sun extends StatelessWidget {
  const Sun({super.key});

  @override
  Widget build(BuildContext context) {
    return Sunshine(
      radius: 90,
      child: Sunshine(
        radius: 70,
        child: Container(
          height: 50,
          width: 50,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            gradient: LinearGradient(
              colors: [
                Color(0xDDFC554F),
                Color(0xDDFFF79E),
              ],
              begin: Alignment.bottomLeft,
              end: Alignment.topRight,
            ),
          ),
        ),
      ),
    );
  }
}
