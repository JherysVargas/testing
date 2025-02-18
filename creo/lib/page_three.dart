import 'package:flutter/material.dart';

class OnboardingPageThree extends StatelessWidget {
  const OnboardingPageThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(38, 30, 30, 0),
      child: Column(
        spacing: 60,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _buildImage(),
          _buildData(),
        ],
      ),
    );
  }

  Widget _buildImage() {
    return Image.asset('assets/images/onboarding3.png');
  }

  Widget _buildData() {
    return Column(
      spacing: 16,
      children: [
        const Text(
          'Es hora de dar el primer paso',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w600,
          ),
        ),
        const Text(
          'Crea tu círculo de ahorro y empieza a colaborar',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
