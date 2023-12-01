import 'package:airplane/shared/theme.dart';
import 'package:airplane/ui/widgtes/custom_bottom_navigation_item.dart';
import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget customButtonNavigation() {
      return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          width: double.infinity,
          height: 60,
          margin: EdgeInsets.only(
            bottom: 30,
            left: defaultMargin,
            right: defaultMargin,
          ),
          decoration: BoxDecoration(
            color: kWhiteColor,
            borderRadius: BorderRadius.circular(18),
          ),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CustomBottomNavigationItem(
                imageURL: 'assets/icon_home.png',
                isSelected: true,
              ),
              CustomBottomNavigationItem(
                imageURL: 'assets/icon_booking.png',
              ),
              CustomBottomNavigationItem(
                imageURL: 'assets/icon_card.png',
              ),
              CustomBottomNavigationItem(
                imageURL: 'assets/icon_settings.png',
              ),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Stack(
        children: [
          customButtonNavigation(),
        ],
      ),
    );
  }
}
