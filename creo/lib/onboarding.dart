import 'package:creo/circle.dart';
import 'package:creo/page_one.dart';
import 'package:creo/page_three.dart';
import 'package:creo/page_two.dart';
import 'package:flutter/material.dart';

const List<Widget> onboardingPages = [
  OnboardingPageOne(),
  OnboardingPageTwo(),
  OnboardingPageThree(),
];

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    final double paddingBottom = MediaQuery.paddingOf(context).bottom;

    return Scaffold(
      backgroundColor: Colors.white,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: AnimatedOpacity(
          duration: kThemeAnimationDuration,
          opacity: _currentPage == 1 ? 0 : 1,
          child: Image.asset(
            'assets/images/logo.png',
          ),
        ),
        backgroundColor: Colors.transparent,
      ),
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          AnimatedPositioned(
            duration: kThemeAnimationDuration,
            top: -580,
            right: _currentPage == 1 ? -440 : 190,
            child: CircleWidget(
              radius: 800,
              color: Color(0xFF972CEA),
              borderWidth: 50,
            ),
          ),
          AnimatedPositioned(
            duration: kThemeAnimationDuration,
            bottom: -420,
            left: _currentPage == 1 ? 30 : -430,
            child: CircleWidget(
              radius: 800,
              color: Color(0xFFFFCD29),
              borderWidth: 50,
            ),
          ),
          PageView.builder(
            onPageChanged: (int page) {
              setState(() {
                _currentPage = page;
              });
            },
            itemCount: onboardingPages.length,
            itemBuilder: (context, index) {
              return onboardingPages[index];
            },
          ),
          Padding(
            padding: EdgeInsets.only(bottom: paddingBottom + 15),
            child: Row(
              spacing: 20,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: List.generate(
                onboardingPages.length,
                (int index) {
                  return AnimatedContainer(
                    duration: kThemeAnimationDuration,
                    height: 10,
                    width: 10,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: _currentPage == index
                          ? Color(0xFF972CEA)
                          : Color(0xFFD1D1D1),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
