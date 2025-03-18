// ignore_for_file: camel_case_types, library_private_types_in_public_api, use_key_in_widget_constructors, file_names, unused_field

import 'package:flutter/material.dart';

class OnboardingScreen extends StatefulWidget {
  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _controller = PageController();
  bool isLastPage = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 375,
      height: 812,
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(color: Colors.white),
      child: Stack(
        children: [
          Positioned(
            left: 0,
            top: 778,
            child: Container(
              width: 375,
              height: 34,
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(),
              child: Stack(
                children: [
                  Positioned(
                    left: 0,
                    top: 0,
                    child: Container(width: 375, height: 34),
                  ),
                  Positioned(
                    left: 121,
                    top: 20,
                    child: Container(
                      width: 134,
                      height: 5,
                      decoration: ShapeDecoration(
                        color: Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(100),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            left: 170,
            top: 732,
            child: Container(
              width: 35,
              height: 22,
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(),
              child: Stack(
                children: [
                  Positioned(
                    left: 0,
                    top: 0,
                    child: Text(
                      'Skip',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFF666666),
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
          ),
          Positioned(
            left: 169,
            top: 685,
            child: Container(
              width: 7,
              height: 7,
              decoration: ShapeDecoration(
                gradient: LinearGradient(
                  begin: Alignment(0.00, 0.00),
                  end: Alignment(1.00, 1.00),
                  colors: [Color(0xFF68A9FF), Color(0xFFFF96C9)],
                ),
                shape: OvalBorder(
                  side: BorderSide(
                    width: 1,
                    strokeAlign: BorderSide.strokeAlignOutside,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            left: 184,
            top: 685,
            child: Opacity(
              opacity: 0.40,
              child: Container(
                width: 7,
                height: 7,
                decoration: ShapeDecoration(
                  color: Color(0xFF666666),
                  shape: OvalBorder(
                    side: BorderSide(
                      width: 1,
                      strokeAlign: BorderSide.strokeAlignOutside,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            left: 199,
            top: 685,
            child: Opacity(
              opacity: 0.40,
              child: Container(
                width: 7,
                height: 7,
                decoration: ShapeDecoration(
                  color: Color(0xFF666666),
                  shape: OvalBorder(
                    side: BorderSide(
                      width: 1,
                      strokeAlign: BorderSide.strokeAlignOutside,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            left: 40,
            top: 495,
            child: Container(
              width: 295,
              height: 150,
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(),
              child: Stack(
                children: [
                  Positioned(
                    left: 0,
                    top: 84,
                    child: SizedBox(
                      width: 295,
                      child: Text(
                        'Find the perfect nannies in your own neighborhood for your beloved child quickly and easily',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xFF666666),
                          fontSize: 17,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w400,
                          height: 1.29,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 0,
                    top: 28,
                    child: SizedBox(
                      width: 295,
                      child: Text(
                        'Discover',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 40,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 106,
                    top: 0,
                    child: Text(
                      'Geolocation',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFF68A9FF),
                        fontSize: 15,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w400,
                        height: 1.33,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            left: 0,
            top: 0,
            child: Container(
              width: 375,
              height: 427,
              clipBehavior: Clip.antiAlias,
              decoration: ShapeDecoration(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(25),
                    bottomRight: Radius.circular(25),
                  ),
                ),
              ),
              child: Stack(
                children: [
                  Positioned(
                    left: 0,
                    top: 0,
                    child: Container(
                      width: 375,
                      height: 427,
                      decoration: BoxDecoration(color: Color(0xFFC8C7CC)),
                    ),
                  ),
                  Positioned(
                    left: 0,
                    top: 0,
                    child: Container(
                      width: 375,
                      height: 427,
                      decoration: BoxDecoration(color: Color(0xFFC8C7CC)),
                    ),
                  ),
                  Positioned(
                    left: 70,
                    top: 185,
                    child: Text(
                      '375 x 427',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFF8A8A8F),
                        fontSize: 48,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 0,
                    top: 0,
                    child: Opacity(
                      opacity: 0.20,
                      child: Container(
                        width: 375,
                        height: 427,
                        decoration: BoxDecoration(color: Colors.black),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 5,
                    top: -64,
                    child: Container(
                      width: 370,
                      height: 555,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage("https://placehold.co/370x555"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            left: 160,
            top: 399,
            child: Container(
              width: 56,
              height: 56,
              decoration: ShapeDecoration(
                color: Color(0xFF4CD964),
                shape: OvalBorder(),
              ),
            ),
          ),
          Positioned(
            left: 0,
            top: 0,
            child: Container(
              width: 375,
              height: 44,
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(),
              child: Stack(
                children: [
                  Positioned(
                    left: 0,
                    top: 0,
                    child: Container(width: 375, height: 44),
                  ),
                  Positioned(
                    left: 336,
                    top: 18.33,
                    child: Opacity(
                      opacity: 0.35,
                      child: Container(
                        width: 22,
                        height: 11.33,
                        decoration: ShapeDecoration(
                          shape: RoundedRectangleBorder(
                            side: BorderSide(width: 1, color: Colors.white),
                            borderRadius: BorderRadius.circular(2.67),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 338,
                    top: 20.33,
                    child: Container(
                      width: 18,
                      height: 7.33,
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(1.33),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 21,
                    top: 16,
                    child: Container(
                      width: 54,
                      height: 16,
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(),
                      child: Stack(
                        children: [
                          Positioned(
                            left: 0,
                            top: 0,
                            child: SizedBox(
                              width: 54,
                              child: Text(
                                '9:12',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
