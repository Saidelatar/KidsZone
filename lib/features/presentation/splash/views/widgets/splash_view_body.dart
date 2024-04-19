import 'package:flutter/material.dart';
import 'package:kids_zone/features/presentation/splash/views/widgets/image_slider.dart';
import 'package:kids_zone/features/presentation/splash/views/widgets/text_slider.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> sliderImageAnimation;
  late Animation<Offset> sliderTextAnimation;

  void initState() {
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 2));
    animationController.forward();
    sliderImageAnimation =
        Tween<Offset>(begin: const Offset(2, 0), end: Offset.zero)
            .animate(animationController);
    sliderTextAnimation =
        Tween<Offset>(begin: const Offset(2, 0), end: Offset.zero)
            .animate(animationController);
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: MediaQuery.of(context).size.height,
          child: Image.asset(
            'assets/images/Background copy 3.jpg',
            fit: BoxFit.fill,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            top: MediaQuery.of(context).size.height * 0.15,
            left: MediaQuery.of(context).size.width * 0.2,
          ),
          child:
              SliderImageAnimation(sliderImageAnimation: sliderImageAnimation),
        ),
        SliderTextAnimation(sliderTextAnimation: sliderTextAnimation),
        Positioned(
          left: 20,
          bottom: 5,
          child: Container(
            constraints: const BoxConstraints(
                minHeight: 100, minWidth: 70, maxHeight: 170, maxWidth: 190),
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'KidsZone is an innovative educational application that utilizes artificial intelligence to teach children writing skills in a fun and interactive way.',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      // fontFamily: 'Codec Pro Bold',
                      color: Colors.white,
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
