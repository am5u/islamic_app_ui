import 'package:flutter/material.dart';
import 'package:islamicapp_ui/core/constant/colors.dart';
import 'package:islamicapp_ui/layout.dart';
import 'package:islamicapp_ui/modules/onboarding/wedgits/on_boardong_header.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingScreen extends StatefulWidget {
  static const routName = '/boarding';

  const OnboardingScreen({super.key});
  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _controller = PageController();
  bool isLastPage = false;

  final List<Widget> pages = [
    OnBoardingContainer(
      boardingnum: 1,
      title: "Welcome To Islami",
      description: "We Are Very Excited To Have You In Our Community",
    ),
    OnBoardingContainer(
      boardingnum: 2,
      title: "Reading the Quran",
      description: "Read, and your Lord is the Most Generous",
    ),

    OnBoardingContainer(
      boardingnum: 3,
      title: "Reading the Quran",
      description: "Read, and your Lord is the Most Generous",
    ),

    OnBoardingContainer(
      boardingnum: 4,
      title: "Reading the Quran",
      description: "Read, and your Lord is the Most Generous",
    ),
  ];

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void goToHome() {
    Navigator.pushReplacementNamed(context, Layout.routName);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView.builder(
            controller: _controller,
            itemCount: pages.length,
            onPageChanged: (index) {
              setState(() {
                isLastPage = index == pages.length - 1;
              });
            },
            itemBuilder: (_, index) => pages[index],
          ),
          Positioned(
            top: 40,
            right: 20,
            child: TextButton(onPressed: goToHome, child: Text("Skip",style: TextStyle(color: TColors.primaryColor),)),
          ),
          Positioned(
            bottom: 20,
            left: 20,
            child: TextButton(
              child: Text("Back",style: TextStyle(color: TColors.primaryColor),),
              onPressed: () {
                if (_controller.page! > 0) {
                  _controller.previousPage(
                    duration: Duration(milliseconds: 300),
                    curve: Curves.easeInOut,
                  );
                }
              },
            ),
          ),
          Positioned(
            bottom: 20,
            right: 20,
            child: TextButton(
              child: Text(isLastPage ? "Done" : "Next",style: TextStyle(color: TColors.primaryColor),),
              onPressed: () {
                if (isLastPage) {
                  goToHome();
                } else {
                  _controller.nextPage(
                    duration: Duration(milliseconds: 100),
                    curve: Curves.easeInOut,
                  );
                }
              },
            ),
          ),
          Positioned(
            bottom: 30,
            left: 0,
            right: 0,
            child: Center(
              child: SmoothPageIndicator(
                
                controller: _controller,
                count: pages.length,
                effect: WormEffect(
                  dotHeight: 10,
                  dotWidth: 10,
                  spacing: 16,
                  activeDotColor: TColors.primaryColor,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
