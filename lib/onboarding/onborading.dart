import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../screen/homepage/homepage.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({Key? key}) : super(key: key);

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  final controller = PageController();
  bool isLastPage = false;
  //final controller1 = LiquidController();

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  Widget buildPage({
    required Color color,
    required String urlImage,
    required String title,
    required String subtitle,
  }) =>
      Container(
        color: color,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              urlImage,
              fit: BoxFit.cover,
              width: double.infinity,
            ),
            const SizedBox(
              height: 64,
            ),
            Text(title,
                style: TextStyle(
                    color: Colors.teal.shade700,
                    fontSize: 32,
                    fontWeight: FontWeight.bold)),
            const SizedBox(
              height: 24,
            ),
            Container(
                padding: const EdgeInsets.symmetric(),
                child: Text(
                  subtitle,
                  style: TextStyle(color: Colors.black),
                )),
          ],
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: controller,
            onPageChanged: (index) {
              setState(() => isLastPage = index == 2);
            },
        children: [
          buildPage(
                color: Colors.green.shade100,
                urlImage: 'assets/images/pic1.jpg',
                title: 'Hello',
                subtitle:
                    'Lorem ipsum is placeholder text commonly used in the graphic, print, and publishing industries for previewing layouts and visual mockups.'),
            buildPage(
                color: Colors.green.shade100,
                urlImage: 'assets/images/pic1.jpg',
                title: 'Hi',
                subtitle:
                    'Lorem ipsum is placeholder text commonly used in the graphic, print, and publishing industries for previewing layouts and visual mockups.'),
            buildPage(
                color: Colors.green.shade100,
                urlImage: 'assets/images/pic1.jpg',
                title: 'How do you do',
                subtitle:
                    'Lorem ipsum is placeholder text commonly used in the graphic, print, and publishing industries for previewing layouts and visual mockups.')
        ],
      ),

                    bottomSheet: isLastPage
              ? TextButton(
                  style: TextButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0),
                    ),
                    primary: Colors.white,
                    backgroundColor: Colors.teal.shade700,
                    minimumSize: const Size.fromHeight(80),
                  ),
                  child: const Text(
                    'Get Started',
                    style: TextStyle(fontSize: 24),
                  ),
                  onPressed: () async {
                    final prefs = await SharedPreferences.getInstance();
                    prefs.setBool('showHome', true);
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                        builder: (context) => HomePageScreen(),
                      ),
                    );
                  },
                )
              : Container(
                  height: 80,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(
                          onPressed: () => controller.jumpToPage(2),
                          child: const Text('Skip')),
                      Center(
                          child: SmoothPageIndicator(
                              controller: controller,
                              count: 3,
                              effect: WormEffect(
                                  activeDotColor: Colors.teal.shade700,
                                  dotColor: Colors.black26,
                                  spacing: 16),
                              onDotClicked: (index) => controller.animateToPage(
                                  index,
                                  duration: const Duration(milliseconds: 500),
                                  curve: Curves.easeIn))),
                      TextButton(
                          onPressed: () => controller.nextPage(
                              duration: const Duration(milliseconds: 500),
                              curve: Curves.easeInOut),
                          child: const Text('Next'))
                    ],
                  ),
                  ),
    );
  }
}
