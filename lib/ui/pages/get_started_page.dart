import 'package:airplane/shared/theme.dart';
import 'package:airplane/ui/widgtes/custom_button.dart';
import 'package:flutter/material.dart';

class GetStartedPage extends StatelessWidget {
  const GetStartedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'assets/image_get_started.png',
                ),
              ),
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'Fly like a Bird',
                  style: whiteTextStyle.copyWith(
                    fontSize: 32,
                    fontWeight: semiBold,
                  ),
                ),
                const SizedBox(height: 10),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 35),
                  child: Text(
                    'Explore new world with us and let your self get an amazing experiences',
                    style: whiteTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: light,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                CustomButton(
                  title: 'Get Started',
                  width: 220,
                  margin: const EdgeInsets.only(
                    top: 50,
                    bottom: 80,
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, '/sign-up');
                  },
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
