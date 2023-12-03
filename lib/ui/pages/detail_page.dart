import 'package:airplane/shared/theme.dart';
import 'package:airplane/ui/pages/choose_site_page.dart';
import 'package:airplane/ui/widgtes/custom_button.dart';
import 'package:airplane/ui/widgtes/interest_item.dart';
import 'package:airplane/ui/widgtes/photo_item.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget backgroundImage() {
      return Container(
        width: double.infinity,
        height: 450,
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/image_destination1.png'),
          ),
        ),
      );
    }

    Widget customShadow() {
      return Container(
        width: double.infinity,
        height: 214,
        margin: const EdgeInsets.only(top: 236),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              kWhiteColor.withOpacity(0),
              Colors.black.withOpacity(.95),
            ],
          ),
        ),
      );
    }

    Widget content() {
      Widget emblem() {
        return Container(
          width: 108,
          height: 24,
          margin: const EdgeInsets.only(top: 20),
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/icon_emblem.png'),
            ),
          ),
        );
      }

      Widget title() {
        return Container(
          margin: const EdgeInsets.only(top: 215),
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Ciliwung',
                      style: whiteTextStyle.copyWith(
                        fontSize: 24,
                        fontWeight: semiBold,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                    Text(
                      'Tangerang',
                      style: whiteTextStyle.copyWith(
                        fontSize: 16,
                        fontWeight: light,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 18,
                    height: 18,
                    margin: const EdgeInsets.only(right: 5),
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/icon_star.png'),
                      ),
                    ),
                  ),
                  Text(
                    '4.8',
                    style: whiteTextStyle.copyWith(
                      fontWeight: medium,
                    ),
                  )
                ],
              ),
            ],
          ),
        );
      }

      Widget description() {
        return Container(
          width: double.infinity,
          margin: const EdgeInsets.only(top: 30),
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 30,
          ),
          decoration: BoxDecoration(
            color: kWhiteColor,
            borderRadius: BorderRadius.circular(18),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'About',
                style: blackTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: semiBold,
                ),
              ),
              const SizedBox(height: 6),
              Text(
                'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s',
                style: blackTextStyle.copyWith(height: 1.8),
              ),
              const SizedBox(height: 20),
              Text(
                'Photos',
                style: blackTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: semiBold,
                ),
              ),
              const SizedBox(height: 6),
              const Row(
                children: [
                  PhotoItem(imageURL: 'assets/image_photo1.png'),
                  PhotoItem(imageURL: 'assets/image_photo2.png'),
                  PhotoItem(imageURL: 'assets/image_photo3.png'),
                ],
              ),
              const SizedBox(height: 20),
              Text(
                'Interest ',
                style: blackTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: semiBold,
                ),
              ),
              const SizedBox(height: 6),
              const Row(
                children: [
                  InterestItem(text: 'Kids Park'),
                  InterestItem(text: 'Honor Bridge'),
                ],
              ),
              const SizedBox(height: 10),
              const Row(
                children: [
                  InterestItem(text: 'City Museum'),
                  InterestItem(text: 'Central Mall'),
                ],
              ),
            ],
          ),
        );
      }

      Widget priceAndBookButton() {
        return Container(
          width: double.infinity,
          margin: const EdgeInsets.symmetric(vertical: 30),
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'IDR 2.500.000',
                      style: blackTextStyle.copyWith(
                        fontSize: 18,
                        fontWeight: medium,
                      ),
                    ),
                    Text(
                      'per orang',
                      style: greyTextStyle.copyWith(
                        fontWeight: light,
                      ),
                    ),
                  ],
                ),
              ),
              CustomButton(
                title: 'Book Now',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ChooseSitePage(),
                    ),
                  );
                },
                width: 170,
              ),
            ],
          ),
        );
      }

      return SafeArea(
        child: Container(
          width: double.infinity,
          margin: EdgeInsets.symmetric(horizontal: defaultMargin),
          child: Column(
            children: [
              emblem(),
              title(),
              description(),
              priceAndBookButton(),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            backgroundImage(),
            customShadow(),
            content(),
          ],
        ),
      ),
    );
  }
}
