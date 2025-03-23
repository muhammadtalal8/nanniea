import 'package:flutter/material.dart';

class OnboardingCard extends StatelessWidget {
  final String image;
  const OnboardingCard({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 427,
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(50),
              bottomRight: Radius.circular(50),
            ),
          ),
        ),
        SizedBox(height: 128),
        Text(
          'Geolocation',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: const Color(0xFF68A9FF),
            fontSize: 15,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w400,
            height: 1.33,
          ),
        ),

        SizedBox(
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
        SizedBox(
          width: 295,
          child: Text(
            'Find the perfect nannies in your own neighborhood for your beloved child quickly and easily',
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
    );
  }
}
