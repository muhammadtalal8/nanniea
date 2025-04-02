import 'package:flutter/material.dart';

class SliderDots extends StatelessWidget {
  final int currentPage;
  final int totalDots;

  const SliderDots({
    super.key,
    required this.currentPage,
    required this.totalDots,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: List.generate(
        totalDots,
        (index) => buildDot(isActive: index == currentPage),
      ),
    );
  }

  Widget buildDot({required bool isActive}) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 4),
      width: 7,
      height: 8,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color:
            isActive
                ? Colors.blue
                : Color(0xFF666666), // Active or inactive color
      ),
    );
  }
}
