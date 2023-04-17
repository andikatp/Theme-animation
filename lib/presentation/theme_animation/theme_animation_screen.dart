import 'package:flutter/material.dart';
import 'package:flutter_application_2/application/theme_service.dart';
import 'package:flutter_application_2/presentation/theme_animation/widgets/moon.dart';
import 'package:flutter_application_2/presentation/theme_animation/widgets/star.dart';
import 'package:flutter_application_2/presentation/theme_animation/widgets/sun.dart';
import 'package:provider/provider.dart';

class ThemeAnimationScreen extends StatelessWidget {
  const ThemeAnimationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Theme Animation'),
        centerTitle: true,
        elevation: 1,
      ),
      body: Consumer<ThemeService>(
        builder: (context, themeService, child) => Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 90),
          child: Material(
            elevation: 4,
            shadowColor:
                themeService.isDarkModeOn ? Colors.white10 : Colors.black,
            borderRadius: BorderRadius.circular(20),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: LinearGradient(
                  colors: themeService.isDarkModeOn
                      ? [
                          const Color(0xFF94A9FF),
                          const Color(0xFF6B66CC),
                          const Color(0xFF200F75),
                        ]
                      : [
                          const Color(0xDDFFFA66),
                          const Color(0xDDFFA057),
                          const Color(0xDD940B99),
                        ],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                ),
              ),
              height: double.infinity,
              width: double.infinity,
              child: Stack(
                children: [
                  Positioned(
                    top: 180,
                    right: 130,
                    child: AnimatedOpacity(
                      duration: const Duration(milliseconds: 200),
                      opacity: themeService.isDarkModeOn ? 1 : 0,
                      child: const Star(),
                    ),
                  ),
                  Positioned(
                    top: 40,
                    right: 130,
                    child: AnimatedOpacity(
                      duration: const Duration(milliseconds: 200),
                      opacity: themeService.isDarkModeOn ? 1 : 0,
                      child: const Star(),
                    ),
                  ),
                  Positioned(
                    top: 50,
                    left: 70,
                    child: AnimatedOpacity(
                      duration: const Duration(milliseconds: 200),
                      opacity: themeService.isDarkModeOn ? 1 : 0,
                      child: const Star(),
                    ),
                  ),
                  Positioned(
                    top: 110,
                    left: 50,
                    child: AnimatedOpacity(
                      duration: const Duration(milliseconds: 200),
                      opacity: themeService.isDarkModeOn ? 1 : 0,
                      child: const Star(),
                    ),
                  ),
                  Positioned(
                    top: 95,
                    left: 140,
                    child: AnimatedOpacity(
                      duration: const Duration(milliseconds: 200),
                      opacity: themeService.isDarkModeOn ? 1 : 0,
                      child: const Star(),
                    ),
                  ),
                  Positioned(
                    top: 120,
                    right: 20,
                    child: AnimatedOpacity(
                      duration: const Duration(milliseconds: 200),
                      opacity: themeService.isDarkModeOn ? 1 : 0,
                      child: const Star(),
                    ),
                  ),
                  Positioned(
                    top: 80,
                    right: 50,
                    child: AnimatedOpacity(
                      duration: const Duration(milliseconds: 200),
                      opacity: themeService.isDarkModeOn ? 1 : 0,
                      child: const Star(),
                    ),
                  ),
                  AnimatedPositioned(
                      duration: const Duration(milliseconds: 200),
                      top: themeService.isDarkModeOn ? 100 : 130,
                      right: themeService.isDarkModeOn ? 100 : -40,
                      child: const Moon()),
                  AnimatedPadding(
                      duration: const Duration(milliseconds: 200),
                      padding: EdgeInsets.only(
                          top: themeService.isDarkModeOn ? 130 : 0),
                      child: const Center(child: Sun())),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: FractionallySizedBox(
                      heightFactor: 0.4,
                      widthFactor: 1,
                      child: Container(
                        decoration: BoxDecoration(
                          color: themeService.isDarkModeOn
                              ? Colors.grey[850]
                              : Colors.white,
                          borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20),
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              themeService.isDarkModeOn
                                  ? 'To Dark?'
                                  : 'To Bright?',
                              style: const TextStyle(
                                fontSize: 21,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            const SizedBox(height: 30),
                            Text(
                              themeService.isDarkModeOn
                                  ? 'Let the sun rises.'
                                  : 'Let it be night.',
                              style: const TextStyle(
                                fontSize: 18,
                                fontStyle: FontStyle.italic,
                              ),
                            ),
                            const SizedBox(height: 30),
                            Switch(
                                value: themeService.isDarkModeOn,
                                onChanged: (_) =>
                                    context.read<ThemeService>().toggleTheme())
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
