import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SliderImageAnimation extends StatelessWidget {
  const SliderImageAnimation({super.key, required this.sliderImageAnimation});
  final Animation<Offset> sliderImageAnimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: sliderImageAnimation,
      builder: (context, child) {
        return SlideTransition(
          position: sliderImageAnimation,
          child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.6, //370
              height: MediaQuery.of(context).size.height * 0.8, //600,
              child: Image.asset('assets/images/boy .png', fit: BoxFit.cover)),
        );
      },
    );
  }
}
