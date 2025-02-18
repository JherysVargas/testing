import 'package:flutter/material.dart';

class OnboardingPageTwo extends StatelessWidget {
  const OnboardingPageTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(38, 50, 30, 0),
      child: Column(
        spacing: 20,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _buildImage(),
          _buildData(),
        ],
      ),
    );
  }

  Widget _buildImage() {
    return Image.asset('assets/images/onboarding2.png');
  }

  Widget _buildData() {
    return Column(
      spacing: 16,
      children: [
        const Text(
          '',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w600,
          ),
        ),
        const Text(
          'En CREO, puedes formar círculos de ahorro con personas cercanas y alcanzar tus metas financieras',
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
