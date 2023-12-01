import 'package:airplane/shared/theme.dart';
import 'package:flutter/material.dart';

class CustomBottomNavigationItem extends StatelessWidget {
  final String imageURL;
  final bool isSelected;

  const CustomBottomNavigationItem({
    super.key,
    required this.imageURL,
    this.isSelected = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const SizedBox(),
        Container(
          height: 24,
          width: 24,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(imageURL),
            ),
          ),
        ),
        Container(
          width: 30,
          height: 2,
          decoration: BoxDecoration(
            color: isSelected ? kPrimaryColor : Colors.transparent,
            borderRadius: BorderRadius.circular(18),
          ),
        )
      ],
    );
  }
}
