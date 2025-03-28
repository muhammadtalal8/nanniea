import 'package:flutter/material.dart';
import 'package:nanniea/pages/home.dart';
import 'package:nanniea/widgets/onboarding_card.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  @override
  void initState() {
    super.initState();
    _pageController.addListener(() {
      setState(() {
        _currentPage = _pageController.page!.round();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        padding: EdgeInsets.only(),
        child: Container(
          padding: EdgeInsets.only(bottom: 200),
          child: PageView(
            controller: _pageController,
            children: [
              Container(
                color: Colors.red,
                child: Center(child: Text("Page 1")),
              ),
              Container(
                color: Colors.black,
                child: Center(child: Text("Page 2")),
              ),
              Container(
                color: Colors.blue,
                child: Center(child: Text("Page 3")),
              ),
            ],
          ),
        ),
      ),
      bottomSheet: Container(
        color: Colors.white,
        padding: EdgeInsets.only(bottom: 50, top: 20), // Adjust padding
        child: Column(
          mainAxisSize: MainAxisSize.min, // Ensure it doesn't take full height
          children: [
            OnboardingCard(),
            SizedBox(height: 20), // Add spacing
            TextButton(
              onPressed: () {
                Navigator.of(
                  context,
                ).pushReplacement(MaterialPageRoute(builder: (_) => Home()));
              },
              child: Text(
                'Skip',
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
          ],
        ),
      ),
    );
  }
}
