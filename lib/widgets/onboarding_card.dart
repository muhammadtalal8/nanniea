import 'package:flutter/material.dart';

class OnboardingCard extends StatefulWidget {
  const OnboardingCard({super.key});

  @override
  State<OnboardingCard> createState() => _OnboardingCardState();
}

class _OnboardingCardState extends State<OnboardingCard> {
  int _currentPage = 0; // Track the current page

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SliderDots(
          currentPage: _currentPage,
          totalDots: 3,
        ), // Center the dots
      ),
    );
  }
}

class SliderDots extends StatelessWidget {
  const SliderDots({
    super.key,
    required int currentPage,
    required int totalDots,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min, // Keep it compact
      children: [
        buildDot(isActive: true),
        SizedBox(width: 8), // Space between dots
        buildDot(isActive: false),
        SizedBox(width: 8),
        buildDot(isActive: false),
      ],
    );
  }

  /// Builds a single dot
  Widget buildDot({required bool isActive}) {
    return Container(
      width: 7,
      height: 8,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: isActive ? null : Color(0xFF666666), // Gray for inactive
        gradient:
            isActive
                ? LinearGradient(
                  colors: [Color(0xFF68A9FF), Color(0xFFFF96C9)],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                )
                : null, // No gradient for inactive dots
        boxShadow:
            isActive
                ? [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 4,
                    offset: Offset(0, 2),
                  ),
                ]
                : [],
      ),
    );
  }
}
