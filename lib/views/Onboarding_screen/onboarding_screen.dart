import 'package:elearningapp/cswidgets/csbutton.dart';
import 'package:elearningapp/utils/colors.dart';
import 'package:elearningapp/views/NavBarViews/nav_bar_views.dart';
import 'package:flutter/material.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({Key? key, }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          color: AppColors.primaryColors,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const SizedBox(height: 20.0), // Add padding at the top
            Image.asset('assets/images/onboarding.png'),
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(35),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Discover your next skill\n Learn anything you want!',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 25.0,
                        color: AppColors.primaryColors,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 15.0),
                    const Text(
                      'Discover the things you want to\nlearn and grow with them',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.black87,
                      ),
                    ),
                    const SizedBox(height: 15.0),
                    CSButton(
                      title: 'Get Started',
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) =>const NavBarViews()), // Navigate to your NavBarView
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20.0), // Add padding at the bottom
          ],
        ),
      ),
    );
  }
}
