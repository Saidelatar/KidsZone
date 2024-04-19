import 'package:flutter/material.dart';

class SliderTextAnimation extends StatelessWidget {
  const SliderTextAnimation({
    super.key,
    required this.sliderTextAnimation,
  });

  final Animation<Offset> sliderTextAnimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: sliderTextAnimation,
      builder: (context, child) {
        return SlideTransition(
          position: sliderTextAnimation,
          child: const Padding(
            padding: EdgeInsets.only(top: 80, left: 20),
            child: Column(
              children: [
                Text(
                  'KidsZone',
                  style: TextStyle(
                      fontSize: 42,
                      color: Colors.white,
                      fontFamily: 'Codec Pro Bold',
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  'Where Learning Meets Innovation.',
                  style: TextStyle(
                      fontSize: 12,
                      color: Colors.white,
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
