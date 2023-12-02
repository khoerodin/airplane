import 'package:airplane/shared/theme.dart';
import 'package:airplane/ui/widgtes/destination_card.dart';
import 'package:airplane/ui/widgtes/destination_tile.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: EdgeInsets.only(
          left: defaultMargin,
          right: defaultMargin,
          top: 30,
        ),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Howdy,',
                    style: blackTextStyle.copyWith(
                      fontSize: 24,
                      fontWeight: semiBold,
                    ),
                  ),
                  Text(
                    'Kezia Anne',
                    style: blackTextStyle.copyWith(
                      fontSize: 24,
                      fontWeight: semiBold,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 6),
                  Text(
                    'Where to fly today?',
                    style: greyTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: light,
                    ),
                    overflow: TextOverflow.ellipsis,
                  )
                ],
              ),
            ),
            Container(
              width: 60,
              height: 60,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage(
                    'assets/image_profile.png',
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget popularDestination() {
      return Container(
        margin: const EdgeInsets.only(top: 30),
        child: const SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              DestinationCard(
                name: 'Lake Ciliwung',
                city: 'Tangerang',
                imageURL: 'assets/image_destination1.png',
                rating: 4.5,
              ),
              DestinationCard(
                name: 'White Houses',
                city: 'Spain',
                imageURL: 'assets/image_destination2.png',
                rating: 4.7,
              ),
              DestinationCard(
                name: 'Hill Heyo',
                city: 'Monaco',
                imageURL: 'assets/image_destination3.png',
                rating: 4.3,
              ),
              DestinationCard(
                name: 'Menarra',
                city: 'Japan',
                imageURL: 'assets/image_destination4.png',
                rating: 3.8,
              ),
              DestinationCard(
                name: 'Payung Teduh',
                city: 'Singapore',
                imageURL: 'assets/image_destination5.png',
                rating: 4.1,
              ),
            ],
          ),
        ),
      );
    }

    Widget newDestinations() {
      return Container(
        margin: EdgeInsets.only(
          top: 30,
          bottom: 100,
          left: defaultMargin,
          right: defaultMargin,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'New This Year',
              style: blackTextStyle.copyWith(
                fontSize: 18,
                fontWeight: semiBold,
              ),
            ),
            const DestinationTile(
              name: 'Danau Beratan',
              city: 'Singaraja',
              imageURL: 'assets/image_destination6.png',
              rating: 4.6,
            ),
            const DestinationTile(
              name: 'Sydney Opera',
              city: 'Melbourne',
              imageURL: 'assets/image_destination7.png',
              rating: 4.1,
            ),
            const DestinationTile(
              name: 'Menara Pisa',
              city: 'Roma',
              imageURL: 'assets/image_destination8.png',
              rating: 4.7,
            ),
            const DestinationTile(
              name: 'Danau Beratan',
              city: 'Singaraja',
              imageURL: 'assets/image_destination9.png',
              rating: 3.6,
            ),
            const DestinationTile(
              name: 'Hill Hey',
              city: 'Monaco',
              imageURL: 'assets/image_destination10.png',
              rating: 4.3,
            ),
          ],
        ),
      );
    }

    return ListView(
      children: [
        header(),
        popularDestination(),
        newDestinations(),
      ],
    );
  }
}
