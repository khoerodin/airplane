import 'package:airplane/cubit/page_cubit.dart';
import 'package:airplane/shared/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomBottomNavigationItem extends StatelessWidget {
  final int index;
  final String imageURL;

  const CustomBottomNavigationItem({
    super.key,
    required this.index,
    required this.imageURL,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.read<PageCubit>().setPage(index);
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SizedBox(),
          Image.asset(
            imageURL,
            width: 24,
            height: 24,
            color: context.watch<PageCubit>().state == index
                ? kPrimaryColor
                : kGreyColor,
          ),
          Container(
            width: 30,
            height: 2,
            decoration: BoxDecoration(
              color: context.watch<PageCubit>().state == index
                  ? kPrimaryColor
                  : Colors.transparent,
              borderRadius: BorderRadius.circular(18),
            ),
          )
        ],
      ),
    );
  }
}
