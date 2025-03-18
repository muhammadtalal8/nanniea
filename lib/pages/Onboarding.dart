// ignore_for_file: camel_case_types, library_private_types_in_public_api, use_key_in_widget_constructors, file_names

import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingScreen extends StatefulWidget {
  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _controller = PageController();
  bool isLastPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            onPageChanged: (index) {
              setState(() {
                isLastPage = index == 2; // Change if you add more pages
              });
            },
            children: [
              OnboardingPage(
                image: "assets/kid1.png",
                title: "Welcome to MyApp",
                description: "Discover amazing features with our app.",
              ),
              OnboardingPage(
                image: "assets/kid2.png",
                title: "Stay Connected",
                description: "Always stay in touch with your favorite content.",
              ),
              OnboardingPage(
                image: "assets/kid3.png",
                title: "Get Started",
                description: "Enjoy a seamless experience.",
              ),
            ],
          ),
          Positioned(
            bottom: 80,
            left: 0,
            right: 0,
            child: Center(
              child: SmoothPageIndicator(
                controller: _controller,
                count: 3,
                effect: SlideEffect(
                  activeDotColor: Color.fromRGBO(104, 170, 255, 1),
                  dotHeight: 10,
                  dotWidth: 10,
                  dotColor: Colors.grey,
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 20,
            right: 20,
            child:
                isLastPage
                    ? ElevatedButton(
                      onPressed: () {
                        // Navigate to Home Screen
                        Navigator.pushReplacementNamed(context, '/home');
                      },
                      child: Text("Get Started"),
                    )
                    : Center(
                      child: TextButton(
                        style: TextButton.styleFrom(
                          iconAlignment: Alignment.centre,
                        ),
                        onPressed: () {
                          _controller.nextPage(
                            duration: Duration(milliseconds: 500),
                            curve: Curves.easeInOut,
                          );
                        },
                        child: Text("Skip"),
                      ),
                    ),
          ),
        ],
      ),
    );
  }
}

class OnboardingPage extends StatelessWidget {
  final String image;
  final String title;
  final String description;

  const OnboardingPage({
    required this.image,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Expanded(
          flex: 3, // Image section takes more space
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.blue.shade50,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ),
              image: DecorationImage(
                image: AssetImage(image),
                fit: BoxFit.cover, // Ensures image fills the box
              ),
            ),
          ),
        ),
        Expanded(
          flex: 2, // Text content takes less space
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  title,
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 10),
                Text(
                  description,
                  style: TextStyle(fontSize: 16, color: Colors.grey),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
