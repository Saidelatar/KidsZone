import 'package:flutter/material.dart';
import 'package:kids_zone/features/presentation/splash/views/splash_view.dart';

void main() {
  runApp(const KidsZone());
}

class KidsZone extends StatelessWidget {
  const KidsZone({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashView(),
    );
  }
}
