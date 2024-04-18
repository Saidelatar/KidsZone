import 'package:flutter/material.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;

  void initState() {
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 2));
    animationController.forward();
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
          child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.6, //370
              height: MediaQuery.of(context).size.height * 0.8, //600,
              child: Image.asset('assets/images/boy .png', fit: BoxFit.cover)),
        ),
        const Padding(
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
                      color: Colors.white, fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
