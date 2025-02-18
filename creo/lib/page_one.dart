import 'package:flutter/material.dart';

class OnboardingPageOne extends StatelessWidget {
  const OnboardingPageOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(38, 10, 30, 0),
      child: Column(
        spacing: 80,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _buildImage(),
          _buildData(),
        ],
      ),
    );
  }

  Widget _buildImage() {
    return Image.asset('assets/images/onboarding1.png');
  }

  Widget _buildData() {
    return Column(
      spacing: 16,
      children: [
        const Text(
          '¡Bienvenido a CREO!',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w600,
          ),
        ),
        const Text(
          'Miles de personas conectadas con CREO, alcanzando sus metas de ahorro',
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
