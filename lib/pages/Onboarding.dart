import 'package:flutter/material.dart';
import 'package:nanniea/widgets/onboarding_card.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final List<Widget> _onboardingScreens = [
    OnboardingCard(
      image: "assets/kid1.png",
      subtitle: "Geolocation",
      title: "Discover",
      description:
          "Find the perfect nannies in your own neighborhood for your beloved child quickly and easily",
    ),
    OnboardingCard(
      image: "assets/kid2.png",
      subtitle: "Availability",
      title: "Schedule",
      description:
          "Determine the right time between you and the nannies with choices you cannot imagine before",
    ),
    OnboardingCard(
      image: "assets/kid3.png",
      subtitle: "Always",
      title: "Connected",
      description:
          "Stay update your child's activity wherever and whenever in real time with messages or video calls",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            Expanded(child: PageView(children: _onboardingScreens)),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 180,
                vertical: 80,
              ),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [for (int i = 0; i < 3; i++) _buildDot(i == 0)],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: TextButton(
                onPressed: () {},
                child: Text(
                  "Skip",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: const Color(0xFF666666),
                    fontSize: 17,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w400,
                    height: 1.29,
                  ),
                ),
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
