import 'package:flutter/material.dart';
import 'package:nanniea/widgets/onboarding_card.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final List<Widget> _onboardingScreens = [
    OnboardingCard(image: "assets/kid1.png"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white, // Set the background color to black
        child: Column(
          children: [
            Expanded(child: PageView(children: _onboardingScreens)),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 180,
                vertical: 120,
              ),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [for (int i = 0; i < 3; i++) _buildDot(i == 0)],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDot(bool isActive) => Container(
    margin: EdgeInsets.symmetric(horizontal: 4),
    width: 7,
    height: 7,
    decoration: BoxDecoration(
      shape: BoxShape.circle,
      color: isActive ? null : Colors.grey,
      gradient:
          isActive
              ? LinearGradient(colors: [Color(0xFF68A9FF), Color(0xFFFF96C9)])
              : null,
    ),
  );
}
