import 'package:airplane/shared/theme.dart';
import 'package:flutter/material.dart';

class SeatItem extends StatelessWidget {
  final String status;
  const SeatItem({
    super.key,
    required this.status,
  });

  @override
  Widget build(BuildContext context) {
    backgroundColor() {
      switch (status) {
        case 'available':
          return kAvailableColor;
        case 'selected':
          return kPrimaryColor;
        case 'unavailable':
          return kUnavailableColor;
        default:
          kUnavailableColor;
      }
    }

    borderColor() {
      switch (status) {
        case 'available':
          return kPrimaryColor;
        case 'selected':
          return kPrimaryColor;
        case 'unavailable':
          return kUnavailableColor;
        default:
          kUnavailableColor;
      }
    }

    statusVariant() {
      switch (status) {
        case 'available':
          return const SizedBox();
        case 'selected':
          return Center(
            child: Text(
              'YOU',
              style: whiteTextStyle.copyWith(
                fontWeight: semiBold,
              ),
            ),
          );
        case 'unavailable':
          return const SizedBox();
        default:
          return const SizedBox();
      }
    }

    return Container(
      width: 48,
      height: 48,
      decoration: BoxDecoration(
        color: backgroundColor(),
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: borderColor()!, width: 2),
      ),
      child: statusVariant(),
    );
  }
}
