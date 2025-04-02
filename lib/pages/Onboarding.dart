import 'package:flutter/material.dart';
import 'package:nanniea/widgets/onboarding_card.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  final PageController _pageController =
      PageController(); // PageController to track the current page
  int _currentPage = 0; // Variable to store the current page index

  @override
  void initState() {
    super.initState();
    _pageController.addListener(() {
      setState(() {
        _currentPage =
            _pageController.page!.round(); // Update the current page index
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
            controller: _pageController, // Attach the PageController
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
            SliderDots(
              currentPage: _currentPage,
              totalDots: 3,
            ), // Pass the dynamic currentPage
          ],
        ),
      ),
    );
  }
}
