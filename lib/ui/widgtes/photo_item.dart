import 'package:flutter/material.dart';

class PhotoItem extends StatelessWidget {
  final String imageURL;

  const PhotoItem({
    super.key,
    required this.imageURL,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70,
      height: 70,
      margin: const EdgeInsets.only(right: 16),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(imageURL),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(18),
      ),
    );
  }
}
